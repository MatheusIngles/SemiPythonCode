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

with open(PATH,'r') as file: 
    sql = file.read()

# Expressão regular para capturar o código da questão e o includegraphics
pattern_questao = r"INSERT INTO questoes\s*\(.*?VALUES\s*\('([^']+)'.*?'(.*?)'\);"
# Expressão regular para capturar includegraphics dentro do enunciado
pattern_includegraphics = r"\\includegraphics\[[^\]]+\]\{([^}]+)\}"
# Lista para armazenar os resultados
resultados = []
# Encontrar todas as correspondências de questões
matches_questoes = re.findall(pattern_questao, sql,re.DOTALL)

# Iterar sobre cada correspondência encontrada
for cod_questao, enunciado in matches_questoes:
    # Verificar se o enunciado contém includegraphics
    match_includegraphics = re.search(pattern_includegraphics, enunciado)
    
    if match_includegraphics:
        imagem = match_includegraphics.group(1)  # Nome da imagem encontrado
        # Adicionar o resultado à lista
        resultados.append((cod_questao, imagem))

# Exibir o resultado
for resultado in resultados:
    print(f"Cod_Questao: {resultado[0]}, Imagem: {resultado[1]}")