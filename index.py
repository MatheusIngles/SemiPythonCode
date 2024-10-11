# Bom minha logica aqui vai ser pegar a imagem e achar a qual questão no insert que ela está se referenciando,
# localizando atraves do \begin{figure} e pegando sua referencia por tags,  exemplo e tantando coloca-los como 
# NomeConcurso_Curso_Materia_Ano_questão_NumeroContador Exemplo: Enade_CC_LDP_2021_14_1
# e organizar padronizar o nome da questão com base no padrão acima 

# Tava pensando aki para seguir como o enunciado eu tenho que tudos até a proxima questão e armazenar por partes dentro da lista.
# Tipo no estado que estou agr so armazeno o codigo,enunciado e imagem, mas tenho que pegar a diciplina e as tags, alem de organizar as altenativas para serem coletadas tambem
# mas em relação as alternativas já que eu pego as questões é so eu pegar o proximo insert e colocar em todas as alternativas. 
import os, re, shutil
from sqlalchemy.sql import text

# Caminho do arquivo SQL
PATH = "./banco_de_dados_1.sql"
# Caminho do diretório onde as imagens estão salvas
DIRECTORY_IMAGENS = "./imagens/"
# Caminho do diretório de resultado para salvar as imagens renomeadas
DIRECTORY_RESULTADO = os.path.join(DIRECTORY_IMAGENS, "resultado")

# Função para capturar imagens dentro de um enunciado
def capturar_imagens(enunciado, identificador):
    pattern_includegraphics = r"\\includegraphics\[[^\]]+\]\{([^}]+)\}"
    imagens = re.findall(pattern_includegraphics, enunciado)
    # Limpar espaços, normalizar os nomes das imagens e remover o prefixo "imagens/" se existir
    return [(identificador, imagem.strip().replace("imagens/", "")) for imagem in imagens]

# Função para capturar tags vinculadas às questões ou alternativas
def capturar_tags(cod_questao, relacoes_tags, todas_tags):
    tags_questao = relacoes_tags.get(cod_questao, [])
    return [todas_tags.get(cod_tag, "Tag não encontrada") for cod_tag in tags_questao]

# Função para verificar recursivamente se a imagem existe em qualquer subdiretório
def verificar_imagem_existe(imagem_nome):
    # Caminhar recursivamente dentro de DIRECTORY_IMAGENS
    for root, dirs, files in os.walk(DIRECTORY_IMAGENS):
        if imagem_nome in files:
            caminho_completo = os.path.join(root, imagem_nome)
            return caminho_completo  # Retorna o caminho completo da imagem encontrada
    return None  # Retorna None se a imagem não for encontrada

# Função para criar o novo nome da imagem com base nos critérios
def gerar_novo_nome(identificadores, tags, contador):
    # Extrair os 5 últimos caracteres dos UUIDs
    uuid_sufixo = "_".join([ident[-5:] for ident in identificadores])
    # Concatenar as tags com "_"
    tags_concat = "_".join(tags) if tags else "sem_tag"
    # Gerar o novo nome com o contador, se necessário
    novo_nome = f"{uuid_sufixo}_{tags_concat}_{contador}.png"
    return novo_nome

# Função para salvar a imagem no novo diretório com o nome alterado
def salvar_imagem(caminho_original, novo_nome):
    # Criar o diretório "resultado" se ainda não existir
    caminho_destino = os.path.join(DIRECTORY_RESULTADO, novo_nome)
    shutil.copy(caminho_original, caminho_destino)
    print(f"Imagem original: {os.path.basename(caminho_original)} -> Novo nome: {novo_nome}")

# Verificar e excluir a pasta "resultado" se ela já existir
if os.path.exists(DIRECTORY_RESULTADO):
    shutil.rmtree(DIRECTORY_RESULTADO)
# Criar a pasta "resultado" novamente
os.makedirs(DIRECTORY_RESULTADO)

# Ler o conteúdo do arquivo SQL
with open(PATH, 'r') as file:
    sql = file.read()

# Expressões regulares para capturar questões, alternativas, e tags
pattern_questao = r"INSERT INTO questoes\s*\(.*?VALUES\s*\('([^']+)'.*?'(.*?)'\);"
pattern_alternativas = r"INSERT INTO alternativas\s*\(.*?\) VALUES\s*(.*?);"
pattern_valores_alternativas = r"\('([^']+)',\s*'([^']+)',\s*'(.*?)',"
pattern_tags = r"INSERT INTO tags\s*\(.*?VALUES\s*\('([^']+)',\s*'([^']+)'.*?\);"
pattern_relacao_tags = r"INSERT INTO questoes_tags\s*\(.*?VALUES\s*\('([^']+)',\s*'([^']+)'\);"

# Dicionários para armazenar as tags e as relações das questões com as tags
todas_tags = {}
relacoes_tags = {}

# Lista para armazenar os resultados
resultados = []

# Capturar todas as tags definidas no arquivo
matches_tags = re.findall(pattern_tags, sql, re.DOTALL)
for cod_tag, nome_tag in matches_tags:
    todas_tags[cod_tag] = nome_tag  # Armazenar a tag pelo nome

# Capturar todas as relações de questões com as tags
matches_relacoes_tags = re.findall(pattern_relacao_tags, sql, re.DOTALL)
for cod_questao, cod_tag in matches_relacoes_tags:
    if cod_questao not in relacoes_tags:
        relacoes_tags[cod_questao] = []
    relacoes_tags[cod_questao].append(cod_tag)

# Capturar todas as questões e suas imagens
matches_questoes = re.findall(pattern_questao, sql, re.DOTALL)
for cod_questao, enunciado in matches_questoes:
    imagens = capturar_imagens(enunciado, cod_questao)
    tags = capturar_tags(cod_questao, relacoes_tags, todas_tags)
    for imagem in imagens:
        resultados.append((cod_questao, imagem[1], tags))

# Capturar todas as alternativas e suas imagens
matches_alternativas_blocos = re.findall(pattern_alternativas, sql, re.DOTALL)
for bloco in matches_alternativas_blocos:
    matches_alternativas = re.findall(pattern_valores_alternativas, bloco)
    for cod_alternativa, cod_questao, enunciado in matches_alternativas:
        imagens = capturar_imagens(enunciado, cod_alternativa)  # Usar o UUID da alternativa aqui
        tags_alternativa = capturar_tags(cod_alternativa, relacoes_tags, todas_tags)
        # Se a alternativa não tiver tags, herdar as tags da questão mãe
        if not tags_alternativa:
            tags_alternativa = capturar_tags(cod_questao, relacoes_tags, todas_tags)
        for imagem in imagens:
            resultados.append((f"Alternativa {cod_alternativa}", imagem[1], tags_alternativa))

# Dicionário para armazenar combinações de UUID e imagem para associar múltiplos UUIDs
mapa_imagens = {}

# Processar os resultados
for identificador, imagem, tags in resultados:
    caminho_imagem = verificar_imagem_existe(imagem)
    if caminho_imagem:
        # Se a imagem já apareceu antes, combine os UUIDs e as tags
        if imagem in mapa_imagens:
            mapa_imagens[imagem]['identificadores'].append(identificador)
            # Concatenar as novas tags (sem duplicatas)
            mapa_imagens[imagem]['tags'].extend([tag for tag in tags if tag not in mapa_imagens[imagem]['tags']])
        else:
            # Criar a primeira entrada para essa imagem
            mapa_imagens[imagem] = {
                'identificadores': [identificador],
                'tags': tags,
                'contador': 1
            }

# Renomear e salvar as imagens com base nos múltiplos UUIDs e tags combinadas
for imagem, dados in mapa_imagens.items():
    identificadores = dados['identificadores']
    tags = dados['tags']
    contador = dados['contador']
    
    # Gerar o novo nome com múltiplos UUIDs e as tags combinadas
    novo_nome = gerar_novo_nome(identificadores, tags, contador)
    
    # Obter o caminho da imagem original
    caminho_imagem = verificar_imagem_existe(imagem)
    
    # Salvar a imagem com o novo nome
    salvar_imagem(caminho_imagem, novo_nome)

# Exibir mensagem de conclusão
print("\nProcesso de renomeação e salvamento de imagens concluído.")