# Registro do Projeto: Alteração e Renomeamento de Imagens em SQL

## ## Visão Geral

O propósito deste projeto é renomear imagens citadas em um arquivo SQL e alterar os nomes correspondentes dentro do próprio arquivo SQL, garantindo que os novos nomes atendam a um padrão definido e sejam corretamente espelhados no banco de dados.

O objetivo era assegurar que as imagens fossem renomeadas diretamente no sistema local de arquivos e que o código fosse executado em um computador com a estrutura de diretórios específica que você forneceu.

## Organização da Estrutura do Projeto

### Pastas e Arquivos:
- **`banco_de_dados_1.sql`**: O arquivo SQL original que inclui menções a imagens nas perguntas e respostas.
- **`imagens/`**: Pasta que abriga as imagens mencionadas no arquivo SQL.
- **Subpastas em `imagens/`**: Algumas imagens estão agrupadas em subpastas, e o código foi modificado para escanear esses subdiretórios. -

Exigências do Projeto ##

1. **Alteração de Títulos**:
    A alteração dos nomes das imagens mencionadas no arquivo SQL, para que seguissem este padrão:
    - **Padrão de Nome**: `(últimos 5 caracteres da UUID do problema ou opção)_(tags associadas separadas por "_")_(contador).png`
    Apenas se existirem duplicatas (mesma UUID, tags e nome da imagem), o contador seria incrementado.
   
2. **Revisão do Arquivo SQL**:
    Depois de renomear as imagens, seria necessário atualizar o arquivo SQL para espelhar os novos nomes das imagens.
    O nome da imagem no arquivo SQL deveria ser modificado em qualquer lugar que apareça, sem a necessidade de criar um novo arquivo, apenas atualizando o arquivo original `banco_de_dados_1.sql'.

3. **Gerenciamento de Múltiplas Execuções**:
    Se as imagens já estiverem corretas, o código deveria ser capaz de ser executado várias vezes sem alterar indevidamente o nome delas.
    Isso implicou em confirmar se a imagem já tinha o nome adequado e, se sim, não renomear a imagem novamente.

### Problems Identified and Solutions:

1. **Renomeação Imprópria nas Opções**:
    Inicialmente, o código renomeava as imagens nas opções com base no UUID da pergunta, e não no UUID da resposta.
    - **Resolução**: O código foi ajustado para levar em conta o UUID da opção ao renomear imagens nas opções.

2. **Duplicações Inúteis**:
    Quando o código era executado repetidamente, o contador era aumentado mesmo que a imagem já tivesse o nome correto.
    - **Resolução**: Implementou-se uma validação no código para impedir a alteração do nome da imagem caso já estivesse com o nome adequado.

3. **Análise em Subpastas**:
    Inicialmente, o código não levava em conta imagens localizadas em subdiretórios no diretório `imagens/`.
    - **Resolução**: A atualização do código permitiu a busca recursiva por imagens em todos os subdiretórios de `imagens/`.

4. **Resolução de Problemas de Nomes Duplicados em Imagens**:
Uma questão frequente era o manejo de duplicatas. Imagens com o mesmo nome, porém vinculadas a diferentes UUIDs e tags, necessitavam de um tratamento apropriado.
- **Resolução**: Quando se deparou com uma imagem de mesmo nome, o código começou a combinar os UUIDs e aumentar o contador apenas quando necessário, mantendo o padrão de nomeação.

### Soluções Aplicadas 

#### Nome padrão para as imagens
O nome das imagens foi alterado conforme solicitado. Por Exemplo:
**Imagem Original**: `pecas-fornecedores.png`
**Atualização do Nome**: `8761c_SQL_Banco_de_Dados_Relacional_1.png`

#### Fluxo do Código:
1. O código começa lendo o arquivo SQL e processa todas as questões, alternativas e tags.
2. Para cada questão/alternativa, o código captura as imagens referenciadas no enunciado e verifica se a imagem existe no diretório `imagens/`.
3. A imagem é renomeada com base nas seguintes regras:
   - **UUID (últimos 5 caracteres)**
   - **Tags** associadas à questão ou alternativa
   - **Contador** (apenas se houver duplicatas)
4. O referenciamento da imagem é atualizado no arquivo SQL.
5. O arquivo SQL original (`banco_de_dados_1.sql`) é sobrescrito com as alterações feitas.
6. **Execuções múltiplas**: O código garante que as imagens não sejam renomeadas desnecessariamente em execuções subsequentes.

### Estrutura do Código

- **Funções Principais**:
  - **`capturar_imagens()`**: Captura as imagens referenciadas no enunciado de questões e alternativas.
  - **`capturar_tags()`**: Captura as tags associadas a uma questão ou alternativa.
  - **`mapear_imagens_diretorios()`**: Faz o mapeamento recursivo de todas as imagens presentes no diretório `imagens/` e seus subdiretórios.
  - **`renomear_imagem()`**: Renomeia as imagens no diretório e atualiza os referenciamentos no arquivo SQL.
  - **`gerar_novo_nome()`**: Gera um novo nome para a imagem com base nos critérios de UUID, tags e contador.
  - **`processar_banco_de_dados()`**: A função principal que orquestra o processo de renomeação das imagens e atualização do SQL.

### Considerações sobre o Ambiente

Este projeto foi desenvolvido considerando a estrutura da máquina e diretórios fornecidos pelo usuário que roda o codigo:
- O diretório **`imagens/`** é onde estão armazenadas as imagens a serem renomeadas.
- As imagens estão distribuídas em subdiretórios, e o código foi ajustado para fazer uma busca recursiva por imagens.
- O código foi testado no arquivo SQL fornecido **`banco_de_dados_1.sql`**.
