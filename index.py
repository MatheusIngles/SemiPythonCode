# Bom minha logica aqui vai ser pegar a imagem e achar a qual questão no insert que ela está se referenciando,
# localizando atraves do \begin{figure} e pegando sua referencia por tags,  exemplo e tantando coloca-los como 
# NomeConcurso_Curso_Materia_Ano_questão_NumeroContador Exemplo: Enade_CC_LDP_2021_14_1
# e organizar padronizar o nome da questão com base no padrão acima 

# Tava pensando aki para seguir como o enunciado eu tenho que tudos até a proxima questão e armazenar por partes dentro da lista.
# Tipo no estado que estou agr so armazeno o codigo,enunciado e imagem, mas tenho que pegar a diciplina e as tags, alem de organizar as altenativas para serem coletadas tambem
# mas em relação as alternativas já que eu pego as questões é so eu pegar o proximo insert e colocar em todas as alternativas. 
import os, re
from sqlalchemy.sql import text

# Caminho do arquivo SQL
PATH = "./banco_de_dados_1.sql"
# Caminho do diretório onde as imagens estão salvas
DIRECTORY_IMAGENS = "./imagens/"

# Função para capturar imagens dentro de um enunciado
def capturar_imagens(enunciado, identificador):
    pattern_includegraphics = r"\\includegraphics\[[^\]]+\]\{([^}]+)\}"
    imagens = re.findall(pattern_includegraphics, enunciado)
    # Limpar espaços, normalizar os nomes das imagens e remover o prefixo "imagens/" se existir
    return [(identificador, imagem.strip().replace("imagens/", "")) for imagem in imagens]

# Função para capturar tags vinculadas às questões
def capturar_tags(cod_questao, relacoes_tags, todas_tags):
    tags_questao = relacoes_tags.get(cod_questao, [])
    return [todas_tags.get(cod_tag, "Tag não encontrada") for cod_tag in tags_questao]

# Função para verificar recursivamente se a imagem existe em qualquer subdiretório
def verificar_imagem_existe(imagem_nome):
    # Caminhar recursivamente dentro de DIRECTORY_IMAGENS
    for root, dirs, files in os.walk(DIRECTORY_IMAGENS):
        if imagem_nome in files:
            caminho_completo = os.path.join(root, imagem_nome)
            print(f"Imagem encontrada: {imagem_nome} -> Caminho completo: {caminho_completo}")
            return True  # Retorna True se a imagem for encontrada
    print(f"Imagem não encontrada: {imagem_nome}")
    return False  # Retorna False se a imagem não for encontrada

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
        imagens = capturar_imagens(enunciado, f"Alternativa {cod_alternativa} da Questão {cod_questao}")
        tags = capturar_tags(cod_questao, relacoes_tags, todas_tags)
        for imagem in imagens:
            resultados.append((f"Alternativa {cod_alternativa} da Questão {cod_questao}", imagem[1], tags))

# Exibir o resultado antes da verificação da existência das imagens
print("Resultados antes da verificação da existência das imagens:\n")
for resultado in resultados:
    identificador, imagem, tags = resultado
    print(f"Cod_Identificador: {identificador}, Imagem: {imagem}, Tags: {', '.join(tags) if tags else 'Nenhuma tag'}")

# Verificar se as imagens existem e remover as que não existem
resultados_finais = [(identificador, imagem, tags) for identificador, imagem, tags in resultados if verificar_imagem_existe(imagem)]

# Exibir o resultado após a verificação da existência das imagens
print("\nResultados após a verificação da existência das imagens:\n")
for resultado in resultados_finais:
    identificador, imagem, tags = resultado
    print(f"Cod_Identificador: {identificador}, Imagem: {imagem}, Tags: {', '.join(tags) if tags else 'Nenhuma tag'}")