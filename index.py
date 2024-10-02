# Bom minha logica aqui vai ser pegar a imagem e achar a qual questão no insert que ela está se referenciando,
# localizando atraves do \begin{figure} e pegando sua referencia por tags,  exemplo e tantando coloca-los como 
# NomeConcurso_Curso_Materia_Ano_questão_NumeroContador Exemplo: Enade_CC_LDP_2021_14_1
# e organizar padronizar o nome da questão com base no padrão acima 

import sys, re
from sqlalchemy.sql import text

with open("./linguagens_programacao.sql",'r') as file: 
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
    else:
        imagem = ""  # Nenhuma imagem encontrada, string vazia

    # Adicionar o resultado à lista
    resultados.append((cod_questao, imagem))

# Exibir o resultado
for resultado in resultados:
    print(f"Cod_Questao: {resultado[0]}, Imagem: {resultado[1]}")