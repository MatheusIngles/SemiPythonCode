# Bom minha logica aqui vai ser pegar a imagem e achar a qual questão no insert que ela está se referenciando,
# localizando atraves do \begin{figure} e pegando sua referencia por tags,  exemplo e tantando coloca-los como 
# NomeConcurso_Curso_Materia_Ano_questão_NumeroContador Exemplo: Enade_CC_LDP_2021_14_1
# e organizar padronizar o nome da questão com base no padrão acima 

# Tava pensando aki para seguir como o enunciado eu tenho que tudos até a proxima questão e armazenar por partes dentro da lista.
# Tipo no estado que estou agr so armazeno o codigo,enunciado e imagem, mas tenho que pegar a diciplina e as tags, alem de organizar as altenativas para serem coletadas tambem
# mas em relação as alternativas já que eu pego as questões é so eu pegar o proximo insert e colocar em todas as alternativas. 
import sys, re
from sqlalchemy.sql import text

PATH = "./banco_de_dados_1.sql"
PATH_IMAGENS = "./Imagens/"

def capturar_imagens(enunciado, identificador):
    pattern_includegraphics = r"\\includegraphics\[[^\]]+\]\{([^}]+)\}"
    imagens = re.findall(pattern_includegraphics, enunciado)
    return [(identificador, imagem) for imagem in imagens]

with open(PATH,'r') as file: 
    sql = file.read()
# Expressões regulares para capturar questões e alternativas
pattern_questao = r"INSERT INTO questoes\s*\(.*?VALUES\s*\('([^']+)'.*?'(.*?)'\);"
pattern_alternativas = r"INSERT INTO alternativas\s*\(.*?\) VALUES\s*(.*?);"
pattern_valores_alternativas = r"\('([^']+)',\s*'([^']+)',\s*'(.*?)',"

# Lista para armazenar os resultados
resultados = []

# Encontrar todas as correspondências de questões e capturar imagens
matches_questoes = re.findall(pattern_questao, sql, re.DOTALL)
for cod_questao, enunciado in matches_questoes:
    resultados.extend(capturar_imagens(enunciado, cod_questao))

# Encontrar todos os blocos de alternativas e capturar imagens
matches_alternativas_blocos = re.findall(pattern_alternativas, sql, re.DOTALL)
for bloco in matches_alternativas_blocos:
    matches_alternativas = re.findall(pattern_valores_alternativas, bloco)
    for cod_alternativa, cod_questao, enunciado in matches_alternativas:
        identificador = f"Alternativa {cod_alternativa} da Questão {cod_questao}"
        resultados.extend(capturar_imagens(enunciado, identificador))

# Exibir o resultado
for resultado in resultados:
    print(f"Cod_Identificador: {resultado[0]}, Imagem: {resultado[1]}")