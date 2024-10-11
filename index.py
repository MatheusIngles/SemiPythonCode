# Bom minha logica aqui vai ser pegar a imagem e achar a qual questão no insert que ela está se referenciando,
# localizando atraves do \begin{figure} e pegando sua referencia por tags,  exemplo e tantando coloca-los como 
# NomeConcurso_Curso_Materia_Ano_questão_NumeroContador Exemplo: Enade_CC_LDP_2021_14_1
# e organizar padronizar o nome da questão com base no padrão acima 

# Tava pensando aki para seguir como o enunciado eu tenho que tudos até a proxima questão e armazenar por partes dentro da lista.
# Tipo no estado que estou agr so armazeno o codigo,enunciado e imagem, mas tenho que pegar a diciplina e as tags, alem de organizar as altenativas para serem coletadas tambem
# mas em relação as alternativas já que eu pego as questões é so eu pegar o proximo insert e colocar em todas as alternativas. 
import os, re, logging
from sqlalchemy.sql import text

# Configuração do logger para controle de mensagens
logging.basicConfig(level=logging.INFO)

# Configuração do logger para controle de mensagens
logging.basicConfig(level=logging.INFO)

# Caminho do arquivo SQL
PATH = "./banco_de_dados_1.sql"
# Caminho do diretório onde as imagens estão salvas
DIRECTORY_IMAGENS = "./imagens/"

# Função para capturar imagens no enunciado de uma questão ou alternativa
def capturar_imagens(enunciado, identificador):
    """
    Captura as imagens referenciadas no enunciado de uma questão ou alternativa.

    Args:
        enunciado (str): O texto que pode conter referências a imagens.
        identificador (str): O identificador único da questão ou alternativa.

    Returns:
        list: Uma lista de tuplas contendo o identificador e o nome da imagem.
    """
    pattern_includegraphics = r"\\includegraphics\[[^\]]+\]\{([^}]+)\}"
    imagens = re.findall(pattern_includegraphics, enunciado)
    return [(identificador, imagem.strip().replace("imagens/", "")) for imagem in imagens]

# Função para capturar as tags vinculadas a uma questão ou alternativa
def capturar_tags(cod_questao, relacoes_tags, todas_tags):
    """
    Captura as tags associadas a uma questão ou alternativa com base no identificador.

    Args:
        cod_questao (str): O identificador da questão ou alternativa.
        relacoes_tags (dict): Um dicionário que mapeia questões a suas respectivas tags.
        todas_tags (dict): Um dicionário com todas as tags disponíveis.

    Returns:
        list: Uma lista de tags associadas.
    """
    tags_questao = relacoes_tags.get(cod_questao, [])
    return [todas_tags.get(cod_tag, "Tag não encontrada") for cod_tag in tags_questao]

# Função para mapear todas as imagens existentes no diretório e subdiretórios
def mapear_imagens_diretorios(base_directory):
    """
    Mapeia todas as imagens encontradas nos subdiretórios e armazena seus caminhos.

    Args:
        base_directory (str): O diretório base onde as imagens estão armazenadas.

    Returns:
        dict: Um dicionário onde as chaves são os nomes das imagens e os valores são seus caminhos completos.
    """
    imagens_encontradas = {}
    for root, dirs, files in os.walk(base_directory):
        for file in files:
            if file.endswith(('.png', '.jpg', '.jpeg')):  # Considera apenas arquivos de imagem
                imagens_encontradas[file] = os.path.join(root, file)
    return imagens_encontradas

# Função para renomear as imagens e atualizar o referenciamento no SQL
def renomear_imagem(caminho_original, novo_nome, sql_content):
    """
    Renomeia uma imagem no diretório original e atualiza seu referenciamento no arquivo SQL.

    Args:
        caminho_original (str): Caminho completo da imagem a ser renomeada.
        novo_nome (str): O novo nome que será dado à imagem.
        sql_content (str): O conteúdo do arquivo SQL, que será atualizado.

    Returns:
        str: O conteúdo do SQL com o novo referenciamento da imagem.
    """
    diretorio, nome_antigo = os.path.split(caminho_original)
    caminho_novo = os.path.join(diretorio, novo_nome)

    # Verifica se o nome novo já existe e se é o correto; se sim, não renomeia.
    if nome_antigo == novo_nome:
        logging.info(f"A imagem já está com o nome correto: {nome_antigo}")
        return sql_content
    
    # Renomear o arquivo de imagem e verificar duplicatas
    contador = 1
    while os.path.exists(caminho_novo):
        novo_nome = f"{os.path.splitext(novo_nome)[0]}_{contador}.png"
        caminho_novo = os.path.join(diretorio, novo_nome)
        contador += 1
    
    try:
        os.rename(caminho_original, caminho_novo)
        logging.info(f"Imagem original: {nome_antigo} -> Novo nome: {novo_nome}")
    except OSError as e:
        logging.error(f"Erro ao renomear {nome_antigo}: {str(e)}")

    # Atualizar o referenciamento no SQL
    return sql_content.replace(nome_antigo, novo_nome)

# Função para criar o novo nome da imagem baseado nos UUIDs e tags
def gerar_novo_nome(identificadores, tags, contador):
    """
    Gera um novo nome para a imagem baseado nos UUIDs e tags associados.

    Args:
        identificadores (list): Lista de identificadores (UUIDs).
        tags (list): Lista de tags associadas à imagem.
        contador (int): Contador usado para evitar duplicatas.

    Returns:
        str: O novo nome gerado para a imagem.
    """
    uuid_sufixo = "_".join([ident[-5:] for ident in identificadores])  # Últimos 5 caracteres dos UUIDs
    tags_concat = "_".join(tags) if tags else "sem_tag"  # Concatenar as tags ou usar 'sem_tag'
    novo_nome = f"{uuid_sufixo}_{tags_concat}_{contador}.png"  # Novo nome com contador
    return novo_nome

# Processo principal
def processar_banco_de_dados(PATH, DIRECTORY_IMAGENS):
    """
    Processa o banco de dados para renomear imagens, atualizar o SQL e associar corretamente tags e UUIDs.

    Args:
        PATH (str): Caminho do arquivo SQL.
        DIRECTORY_IMAGENS (str): Diretório onde as imagens estão armazenadas.
    """
    # Ler o conteúdo do arquivo SQL
    with open(PATH, 'r') as file:
        sql_content = file.read()

    # Expressões regulares para capturar questões, alternativas e tags
    pattern_questao = r"INSERT INTO questoes\s*\(.*?VALUES\s*\('([^']+)'.*?'(.*?)'\);"
    pattern_alternativas = r"INSERT INTO alternativas\s*\(.*?\) VALUES\s*(.*?);"
    pattern_valores_alternativas = r"\('([^']+)',\s*'([^']+)',\s*'(.*?)',"
    pattern_tags = r"INSERT INTO tags\s*\(.*?VALUES\s*\('([^']+)',\s*'([^']+)'.*?\);"
    pattern_relacao_tags = r"INSERT INTO questoes_tags\s*\(.*?VALUES\s*\('([^']+)',\s*'([^']+)'\);"

    # Dicionários para armazenar as tags e as relações das questões com as tags
    todas_tags = {}
    relacoes_tags = {}

    # Capturar todas as tags definidas no arquivo SQL
    matches_tags = re.findall(pattern_tags, sql_content, re.DOTALL)
    for cod_tag, nome_tag in matches_tags:
        todas_tags[cod_tag] = nome_tag  # Armazenar as tags

    # Capturar as relações de questões com as tags
    matches_relacoes_tags = re.findall(pattern_relacao_tags, sql_content, re.DOTALL)
    for cod_questao, cod_tag in matches_relacoes_tags:
        if cod_questao not in relacoes_tags:
            relacoes_tags[cod_questao] = []
        relacoes_tags[cod_questao].append(cod_tag)

    # Capturar todas as questões e alternativas com imagens
    resultados = []

    # Capturar imagens das questões
    matches_questoes = re.findall(pattern_questao, sql_content, re.DOTALL)
    for cod_questao, enunciado in matches_questoes:
        imagens = capturar_imagens(enunciado, cod_questao)
        tags = capturar_tags(cod_questao, relacoes_tags, todas_tags)
        for imagem in imagens:
            resultados.append((cod_questao, imagem[1], tags))

    # Capturar imagens das alternativas
    matches_alternativas_blocos = re.findall(pattern_alternativas, sql_content, re.DOTALL)
    for bloco in matches_alternativas_blocos:
        matches_alternativas = re.findall(pattern_valores_alternativas, bloco)
        for cod_alternativa, cod_questao, enunciado in matches_alternativas:
            imagens = capturar_imagens(enunciado, cod_alternativa)
            tags_alternativa = capturar_tags(cod_alternativa, relacoes_tags, todas_tags)
            if not tags_alternativa:
                tags_alternativa = capturar_tags(cod_questao, relacoes_tags, todas_tags)
            for imagem in imagens:
                resultados.append((f"Alternativa {cod_alternativa}", imagem[1], tags_alternativa))

    # Mapear as imagens encontradas no diretório
    imagens_mapeadas = mapear_imagens_diretorios(DIRECTORY_IMAGENS)

    # Dicionário para armazenar as imagens e associar múltiplos UUIDs
    mapa_imagens = {}

    # Processar os resultados para renomear e atualizar o SQL
    for identificador, imagem, tags in resultados:
        caminho_imagem = imagens_mapeadas.get(imagem)
        if caminho_imagem:
            if imagem in mapa_imagens:
                mapa_imagens[imagem]['identificadores'].append(identificador)
                mapa_imagens[imagem]['tags'].extend([tag for tag in tags if tag not in mapa_imagens[imagem]['tags']])
            else:
                mapa_imagens[imagem] = {
                    'identificadores': [identificador],
                    'tags': tags,
                    'contador': 1
                }

    # Renomear as imagens e atualizar o SQL
    for imagem, dados in mapa_imagens.items():
        identificadores = dados['identificadores']
        tags = dados['tags']
        contador = dados['contador']
        novo_nome = gerar_novo_nome(identificadores, tags, contador)
        caminho_imagem = imagens_mapeadas.get(imagem)
        sql_content = renomear_imagem(caminho_imagem, novo_nome, sql_content)

    # Sobrescrever o arquivo SQL original com as atualizações
    with open(PATH, 'w') as file:
        file.write(sql_content)

    logging.info("Processo de renomeação e atualização do arquivo SQL concluído.")

# Executar o processamento
processar_banco_de_dados(PATH, DIRECTORY_IMAGENS)