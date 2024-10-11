-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- Gerar UUID v7: 
SELECT gerar_uuid7();


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:1
--------------------------------------------------------------------------------

INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('0192784b-17f0-7c49-9e22-5f28b9989684', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
A arquitetura ilustrada na figura abaixo é um exemplo típico de qual sistema?
(CU = unidade de controle; IS = \ingles(stream} de instruções; PU = unidade de
processamento; DS = \ingles{stream} de dados; LM = memória local)
\begin{figure}[H]
\begin{center}
\includegraphics[scale=0.5]{arq-cluster.png}
\end{center}
\end{figure}
\vspace{-1cm}');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927860-30e7-78f4-837a-9a8caa08b85f', '0192784b-17f0-7c49-9e22-5f28b9989684', 'Multiprocessadores simétricos', FALSE),
('01927860-636e-7fab-a636-54ea40ff46b3', '0192784b-17f0-7c49-9e22-5f28b9989684', 'Clusters', TRUE),
('01927860-95ad-7032-b7f1-84c08a726d9a', '0192784b-17f0-7c49-9e22-5f28b9989684', 'Processadores seqüenciais', FALSE),
('01927860-c7e8-7afc-93e9-dc8fa65b3fff', '0192784b-17f0-7c49-9e22-5f28b9989684', 'Processadores multicore', FALSE),
('01927860-e5a7-7506-9411-14a7f02af8bb', '0192784b-17f0-7c49-9e22-5f28b9989684', 'Acesso não uniforme à memória', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('0192784b-17f0-7c49-9e22-5f28b9989684', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927864-9417-7cdf-aa6b-c6ed4bb77954', 'Arquitetura de Computadores', padronizar_palavra('Arquitetura de Computadores'));

INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927867-bbb9-76e1-8ca6-eac3934468a0', 'Clusters', padronizar_palavra('Clusters'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('0192784b-17f0-7c49-9e22-5f28b9989684', '01927864-9417-7cdf-aa6b-c6ed4bb77954');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('0192784b-17f0-7c49-9e22-5f28b9989684', '01927867-bbb9-76e1-8ca6-eac3934468a0');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:2
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927870-bc0b-7ece-a1dc-30dc98d19ba1', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Na definição da aquisição de um novo software de
gerenciamento de bancos de dados (SGBD) para uma empresa da área de transporte 
coletivo urbano, a direção da área de informática conduziu o processo de decisão
da seguinte forma: foi designado um profissional da área de bancos de dados
(aquele com maior experiência na área) e atribuída a ele a tarefa de decidir
qual seria o melhor SBGD a ser adquirido. Esse profissional desenvolveu uma
série de estudos sobre as opções disponíveis, utilizando ténicas de simulação e
testes específicos, levando em conta que a quase totalidade dos dados que serão
armazenados são dados de cadastro altamente estruturados e que devem estar
disponíveis na Internet para consulta pelos usuários. Ao final, apresentou
ao diretor um relatório em que indicava claramente qual o melhor tipo de SGBD a
ser adquirido pela empresa. Com base nessa informação, o diretor da empresa
disparou o processo de compra do SGBD. Podemos concluir que o profissional de
bancos de dados escolheu um:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927876-551e-771e-96c7-c31141e597d4', '01927870-bc0b-7ece-a1dc-30dc98d19ba1', 'SGBD Grafo, para armazenar todos os relacionamentos entre os usuários do transporte público nos ônibus.', FALSE),
('01927876-7934-72a6-ba97-ca740c614250', '01927870-bc0b-7ece-a1dc-30dc98d19ba1', 'SGBD Relacional, para armazenar de forma otimizada os dados que, em sua maioria, são altamente estruturados.', TRUE),
('01927876-90f2-79ce-b536-dd0a87fb2918', '01927870-bc0b-7ece-a1dc-30dc98d19ba1', 'SGBD Hierárquico, para armazenar corretamente e de forma otimizada todas os relacionamentos entre os ônibus, empregados e passageiros do transporte público.', FALSE),
('01927876-a791-78ba-9126-f774048216aa', '01927870-bc0b-7ece-a1dc-30dc98d19ba1', 'SGBD Não Relacional (NoSQL) já que, para armazenar todos os dados e ainda permitir a consulta pelos usuários na Internet, o melhor seria utilizar uma solução com bancos de dados não relacionais que são otimizados para uso na web.', FALSE),
('01927876-c399-7db3-b308-0e254e83ecd2', '01927870-bc0b-7ece-a1dc-30dc98d19ba1', 'Nenhuma das respostas acima.', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927870-bc0b-7ece-a1dc-30dc98d19ba1', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927876-c399-7db3-b308-0e254e83ecd2', 'SGBD Relacional', padronizar_palavra('SGBD Relacional'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927870-bc0b-7ece-a1dc-30dc98d19ba1', '01927876-c399-7db3-b308-0e254e83ecd2');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:3
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927878-ef43-74e8-ab40-d1d2b77a1522', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Os Sistemas de Bancos de Dados (SBD) são essenciais hoje em dia, tanto para
pessoas físicas quanto para pessoas jurídicas. Assinale a alternativa que não
representa adequadamente a importância do uso de um SBD:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('0192787a-b147-7a58-8f19-bd1ce1634c31', '01927878-ef43-74e8-ab40-d1d2b77a1522', 'Permitem que as empresas criem sites na Internet de modo que os próprios usuários consigam consultar e atualizar alguns dados.', FALSE),
('0192787a-ce3d-7024-8fa3-b0fe33ea60aa', '01927878-ef43-74e8-ab40-d1d2b77a1522', 'Permitem consultas históricas, de modo otimizado, para que alguma informação atual possa ser comparada com dados anteriores.', FALSE),
('0192787a-e454-71c8-a60c-8b49416afe0b', '01927878-ef43-74e8-ab40-d1d2b77a1522', 'Permitem às empresas coletar, armazenar, agregar, manipular e gerenciar dados, tomando assim melhores decisões de negócios e fornecendo diversos serviços úteis aos seus clientes.', FALSE),
('0192787a-8459-7b10-a48f-a557f2ff3478', '01927878-ef43-74e8-ab40-d1d2b77a1522', 'Permitem que as empresas tenham mecanismos de obedecer à Lei Geral de Proteção de Dados Pessoais (LGPD), impedindo processos de anonimização das informações.', TRUE),
('0192787a-fe92-7a07-affe-76a528445682', '01927878-ef43-74e8-ab40-d1d2b77a1522', 'ermitem que as empresas criem aplicativos para telefones celulares, oferecendo serviços aos seus usuários.', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927878-ef43-74e8-ab40-d1d2b77a1522', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('0192787e-86c3-7493-a867-c31f656c0420', 'Sistemas de Bancos de Dados (SBD)', padronizar_palavra('Sistemas de Bancos de Dados (SBD)'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927878-ef43-74e8-ab40-d1d2b77a1522', '0192787e-86c3-7493-a867-c31f656c0420');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:4
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927880-31f6-79dc-be27-c718e3100d1f', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Quando dizemos que um banco de dados é em \ingles{cloud} e centralizado, estamos
nos referindo, respectivamente, à localização dos dados e da
infraestrutura. Verdadeiro ou falso?');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927882-2e38-79e9-99f1-55415fd45b8e', '01927880-31f6-79dc-be27-c718e3100d1f', 'Não é possível determinar com os dados apresentados.', FALSE),
('01927882-45f2-7868-b091-db53aa30114b', '01927880-31f6-79dc-be27-c718e3100d1f', 'Verdadeiro', FALSE),
('01927882-6c20-77d9-91c3-c86483ced261', '01927880-31f6-79dc-be27-c718e3100d1f', 'Falso', TRUE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927880-31f6-79dc-be27-c718e3100d1f', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927883-aafe-70d3-a462-758317d349cb', 'Infraestrutura', padronizar_palavra('Infraestrutura'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927880-31f6-79dc-be27-c718e3100d1f', '01927883-aafe-70d3-a462-758317d349cb');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:5
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927884-803f-710b-b774-949d459f1106', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Você estava ouvindo a discussão de dois colegas, o João e a Maria. Enquanto o
João afirmava que o conceito de banco de dados (BD) é extremamente diferente do
conceito de sistema de gerenciamento de bancos de dados (SGBD), a Maria
discordava e afirmava que o banco de dados nada mais é do que um componente do
SGBD. Nesse momento o professor entrou na sala, percebeu a discussão e falou
que:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927885-5849-7b2b-9b06-2837a662176b', '01927884-803f-710b-b774-949d459f1106', 'Os dois estavam certos pois o conceito, na prática, depende da situação específica que se está considerando.', FALSE),
('01927885-74a5-705c-9d6f-98f7ea6f1458', '01927884-803f-710b-b774-949d459f1106', 'Os dois estavam errados pois não são conceitos separados nem componentes, são conceitos sinônimos.', FALSE),
('01927885-88c9-7709-9b4b-9d49d137b68d', '01927884-803f-710b-b774-949d459f1106', 'Não é possível saber quem estava certo ou errado pois não definiram qual o modelo de dados que estava sendo considerado na discusão.', FALSE),
('01927885-9ac5-7de6-9d33-786788b80eeb', '01927884-803f-710b-b774-949d459f1106', 'A Maria estava certa já que o banco de dados é, realmente, um componente interno do sistema de gerenciamento de bancos de dados e não existe de forma independente.', FALSE),
('01927885-ae81-7972-b414-c6cefde46d60', '01927884-803f-710b-b774-949d459f1106', 'O João estava certo já que o banco de dados é, realmente, um conceito diferente do conceito do sistema de gerenciamento de bancos de dados, e existe de forma independente.', TRUE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927884-803f-710b-b774-949d459f1106', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927884-803f-710b-b774-949d459f1106', '0192787e-86c3-7493-a867-c31f656c0420');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:6
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('0192788a-f116-76bc-83fa-3859b9125f14', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
A sentença descritiva resultante de um processo de mensuração, correspondendo a
um fato bruto observado/conhecido que pode ser registrado, que não foi
processado para revelar seu significado/importância, que tem um certo
significado implícito e que deve estar corretamente formatado para o
armazenamento, processamento e apresentação é:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('0192788c-27f2-7c2d-bc93-e9f64cbb84e7', '0192788a-f116-76bc-83fa-3859b9125f14', 'Processamento', FALSE),
('0192788c-3869-7499-8c5b-6e9f26783fd6', '0192788a-f116-76bc-83fa-3859b9125f14', 'Sabedoria', FALSE),
('0192788c-4e8f-7ab9-808e-64ea5192c194', '0192788a-f116-76bc-83fa-3859b9125f14', 'Conhecimento', FALSE),
('0192788c-6ac7-7247-8cc5-1ee82e5c51a7', '0192788a-f116-76bc-83fa-3859b9125f14', 'Informação', FALSE),
('0192788c-84ac-76b0-96bb-c24c3e6e2440', '0192788a-f116-76bc-83fa-3859b9125f14', 'Dado', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('0192788a-f116-76bc-83fa-3859b9125f14', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('0192788e-0823-759c-8e27-2a341cd9c7f2', 'Processamento de Informação ', padronizar_palavra('Processamento de Informação'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('0192788a-f116-76bc-83fa-3859b9125f14', '0192788e-0823-759c-8e27-2a341cd9c7f2');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:7
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('0192788f-0023-739c-b828-ce5a14329385', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Quando nos referimos à propriedade auto-descritiva dos bancos de dados estamos
trabalhando, fundamentalmente, com o conceito de:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927890-fcf4-75e8-b15c-9966dbbdc466', '0192788f-0023-739c-b828-ce5a14329385', 'Armazenamento', FALSE),
('01927891-13d4-7341-af3a-fcffc0a2d620', '0192788f-0023-739c-b828-ce5a14329385', 'Metadados', TRUE),
('01927891-26a3-71a7-ad07-8bfb1c31912d', '0192788f-0023-739c-b828-ce5a14329385', 'Relacionamentos', FALSE),
('01927891-3cba-7888-9ae0-192ee396dbfa', '0192788f-0023-739c-b828-ce5a14329385', 'Usuários', FALSE),
('01927891-50a1-7462-9600-21c49951c014', '0192788f-0023-739c-b828-ce5a14329385', 'SQL', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('0192788f-0023-739c-b828-ce5a14329385', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927892-81cc-72f0-a958-b8e1a5e1656e', 'Metadados', padronizar_palavra('Metadados'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('0192788f-0023-739c-b828-ce5a14329385', '01927892-81cc-72f0-a958-b8e1a5e1656e');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:8
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927893-6344-7300-8e88-1d0e2e2959a0', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Um banco de dados OLAP (Online Analytical Processing --- Processamento Analítico
Online) é um banco de dados organizado de forma a dar suporte ao Business
Intelligence (BI --- Inteligência de Negócio) que, de forma simplificada, é o
processo de analisar dados para obter informações que podem ser utilizadas na
tomada de decisões comerciais e estratégicas. Em relação aos bancos de dados
OLAP, marque a afirmação correta:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927893-b1e3-7baf-8f5e-a4fe17b82c1e', '01927893-6344-7300-8e88-1d0e2e2959a0', 'São otimizados para o processamento de grande volume de dados históricos e métricas de negócio para a tomada de decisões estratégicas, permitindo e facilitando a análise de dados para a geração de informações e conhecimentos para a tomada de decisões.', TRUE),
('01927893-df2a-73ff-8ff3-4b63640429f4', '01927893-6344-7300-8e88-1d0e2e2959a0', 'São otimizados para consulta e relatórios de rotina de dados.', FALSE),
('01927893-fa70-7e97-aa5d-bb9c89f708ef', '01927893-6344-7300-8e88-1d0e2e2959a0', 'São preparados para responder perguntas do tipo ``Quais alunos estão matriculados na turma de Bancos de Dados I neste semestre?''', FALSE),
('01927894-0fd8-7f33-91af-6d3f3ff3d205', '01927893-6344-7300-8e88-1d0e2e2959a0', 'São otimizados para o processamento de grande volume de transações diárias, o que permite a análise e a tomada de decisões em tempo real, favorecendo assim a administração empresarial.', FALSE),
('01927894-2893-7f8c-8f5e-d89c54932d01', '01927893-6344-7300-8e88-1d0e2e2959a0', 'Geralmente os dados de origem do OLTP são de bancos de dados OLAP.', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927893-6344-7300-8e88-1d0e2e2959a0', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927897-9091-7ced-83c8-e6cc3a5f01f3', 'OLAP', padronizar_palavra('OLAP'));

INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927897-fab4-7cad-9d07-bb2c0b4e46af', 'Business Intelligence (BI)', padronizar_palavra('Business Intelligence (BI)'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927893-6344-7300-8e88-1d0e2e2959a0', '01927897-9091-7ced-83c8-e6cc3a5f01f3');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927893-6344-7300-8e88-1d0e2e2959a0', '01927897-fab4-7cad-9d07-bb2c0b4e46af');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:9
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927898-885f-764f-bbc6-b2f98f9a3691', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Um banco de dados (BD) é uma coleção logicamente coerente de dados relacionados
e persistentes. Em relação às características de um banco de dados, assinale a
alternativa verdadeira:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927899-62d1-7d9b-a3d6-4ee39e884ed9', '01927898-885f-764f-bbc6-b2f98f9a3691', 'Geralmente é projetado e usado para finalidades gerais, sendo extremamente genéricos e adaptáveis para qualquer situação.', FALSE),
('01927899-7544-7331-9112-fbaa17993087', '01927898-885f-764f-bbc6-b2f98f9a3691', 'Representa um aspecto (ou parte) do mundo real, parte essa chamada de ``catálogo'' ou ``dicionário de dados``.', FALSE),
('01927899-8675-7435-9f49-ddccfee85e49', '01927898-885f-764f-bbc6-b2f98f9a3691', 'Não precisam ser obrigatoriamente computadorizados, existem bancos de dados manuais e/ou em papel.', TRUE),
('01927899-9886-7829-bd37-5ee1ee3a6305', '01927898-885f-764f-bbc6-b2f98f9a3691', 'Não precisa de dados atuais e verdadeiros para ser útil (para representar corretamente a realidade atual).', FALSE),
('01927899-aaed-7632-9328-22550b5a3762', '01927898-885f-764f-bbc6-b2f98f9a3691', 'Armazena dois grandes ``tipos`` de dados: os dados do usuário final e os metadados, sendo que os metadados ficam armazenados nas mesmas tabelas que os dados dos usuários e isso nos permite saber a estrutura dos bancos de dados.', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927898-885f-764f-bbc6-b2f98f9a3691', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927898-885f-764f-bbc6-b2f98f9a3691', '01927892-81cc-72f0-a958-b8e1a5e1656e');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA: 10
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('0192789c-f5cb-7181-a84c-ce8ce477f6c5', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Em relação aos metadados de um banco de dados, assinale a afirmação correta:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('019278a0-2898-7f13-a590-9ee55aa93fd6', '0192789c-f5cb-7181-a84c-ce8ce477f6c5', 'Armazenam informações sobre os dados dos usuários, ou seja, são dados de rotina dos usuários, aqueles dados que os usuários precisam para trabalhar no seu dia a dia.', FALSE),
('019278a0-41d7-796a-8827-e8c7bf4762cc', '0192789c-f5cb-7181-a84c-ce8ce477f6c5', 'São armazenados no catálogo (ou dicionário de dados) do sistema de gerenciamento de bancos de dados, que fica nas mesmas tabelas de dados dos usuários, permitindo assim que os metadados estejam sempre atualizados.', FALSE),
('019278a0-5a32-70ba-bdd7-1ddec35edf3c', '0192789c-f5cb-7181-a84c-ce8ce477f6c5', 'Armazenam informações como os dados de cadastro dos usuários, os valores de compra em uma ordem de compra, as turmas e disciplinas que os professores dão aula, e dados de recursos humanos.', FALSE),
('019278a0-71b0-74ae-bccb-c832a186f776', '0192789c-f5cb-7181-a84c-ce8ce477f6c5', 'Como são sempre atualizados de forma automática pelo sistema de gerenciamento de bancos de dados, estão sempre prontos para nos dar uma ``foto'' da estrutura do banco de dados em um momento no tempo.', TRUE),
('019278a0-8b42-7294-a3fd-e02840b683f8', '0192789c-f5cb-7181-a84c-ce8ce477f6c5', 'São atualizados pelo SGBD, sempre que ocorre alguma operação de inserção, atualização ou remoção de dados.', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('0192789c-f5cb-7181-a84c-ce8ce477f6c5', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('0192789c-f5cb-7181-a84c-ce8ce477f6c5', '01927892-81cc-72f0-a958-b8e1a5e1656e');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('0192789c-f5cb-7181-a84c-ce8ce477f6c5', '01927876-c399-7db3-b308-0e254e83ecd2');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:11
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('019278a3-b1f6-7f18-9f51-d34733885be1', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Um sistema de gerenciamento de bancos de dados (SGBD) é um software servidor
que nos permite definir, construir, manipular, integrar e compartilhar bancos
de dados entre diversos usuários e aplicações. São exemplos de
SGBD, \textbf{exceto}:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('019278a5-a034-7a5c-9e86-cbb446d659f8', '019278a3-b1f6-7f18-9f51-d34733885be1', 'PostgreSQL', FALSE),
('019278a5-bd03-78bb-a508-88c1ab6ca6da', '019278a3-b1f6-7f18-9f51-d34733885be1', 'Oracle Database', FALSE),
('019278a5-d1e5-70d6-a060-e70111a5fc44', '019278a3-b1f6-7f18-9f51-d34733885be1', 'Oracle SQL Developer', TRUE),
('019278a5-e63d-79a2-92f8-82b6ba67af73', '019278a3-b1f6-7f18-9f51-d34733885be1', 'SQL Server', FALSE),
('019278a5-fccc-7db9-9844-9a11d37a44af', '019278a3-b1f6-7f18-9f51-d34733885be1', 'MongoDB', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('019278a3-b1f6-7f18-9f51-d34733885be1', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('019278a6-21d2-735a-92d5-14faa622f9b5', 'Ferramentas de Banco de Dados', padronizar_palavra('Ferramentas de Banco de Dados'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('019278a3-b1f6-7f18-9f51-d34733885be1', '01927876-c399-7db3-b308-0e254e83ecd2');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('019278a3-b1f6-7f18-9f51-d34733885be1', '019278a6-21d2-735a-92d5-14faa622f9b5');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:12
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('019278a7-52c0-7b45-b5bb-bc9850fe011e', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
O usuário que não é da área de tecnologia, costuma ser de alta gerência, que é
especialista no negócio e tem a responsabilidade central pelas políticas de
dados da empresa é o:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('019278a9-22ad-7025-8139-ab17b0de79fc', '019278a7-52c0-7b45-b5bb-bc9850fe011e', 'Encarregado da Proteção de Dados (DPO: Data Protection Officer)', FALSE),
('019278a9-34b2-7453-b94f-8c225faf5908', '019278a7-52c0-7b45-b5bb-bc9850fe011e', 'Administrador do Banco de Dados (DBA: Database Administrator)', FALSE),
('019278a9-471b-7f97-b986-ddbc9c2bc533', '019278a7-52c0-7b45-b5bb-bc9850fe011e', 'Gerente de Tecnologia da Informação (ITM: IT Manager)', FALSE),
('019278a9-62b7-7c02-8629-38176cab1547', '019278a7-52c0-7b45-b5bb-bc9850fe011e', 'Coordenador de Tecnologia da Informação (ITS: IT Supervisor)', FALSE),
('019278a9-7ee9-767a-9bf0-2210ccf23631', '019278a7-52c0-7b45-b5bb-bc9850fe011e', 'Administrador de Dados (DA: Data Administrator)', TRUE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('019278a7-52c0-7b45-b5bb-bc9850fe011e', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('019278aa-680b-72bf-9d67-6af7a83ae52d', 'Administrador de Dados (DA)', padronizar_palavra('Administrador de Dados (DA)'));

INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('019278aa-7b3f-7f3b-9fe5-d7d3ff3aefff', 'Políticas de Dados', padronizar_palavra('Políticas de Dados'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('019278a7-52c0-7b45-b5bb-bc9850fe011e', '019278aa-680b-72bf-9d67-6af7a83ae52d');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('019278a7-52c0-7b45-b5bb-bc9850fe011e', '019278aa-7b3f-7f3b-9fe5-d7d3ff3aefff');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:13
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('019278ac-fc99-7842-b4ec-c1dee5abc28f', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Por que não podemos utilizar apelidos de coluna na cláusula WHERE da SQL?');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('019278ad-4e1e-7268-a2d6-b6475ce27241', '019278ac-fc99-7842-b4ec-c1dee5abc28f', 'Nós podemos utilizar apelidos na cláusula WHERE.', FALSE),
('019278ad-66d0-79ad-9a53-4a5788881500', '019278ac-fc99-7842-b4ec-c1dee5abc28f', 'Porque a cláusula SELECT é avaliada antes da WHERE.', FALSE),
('019278ad-7a2e-76b2-9955-d49c8bb34ccb', '019278ac-fc99-7842-b4ec-c1dee5abc28f', 'Porque só podemos utilizar aliases, e não apelidos.', FALSE),
('019278ad-9569-763c-bfc6-c2de7bc219fa', '019278ac-fc99-7842-b4ec-c1dee5abc28f', 'Porque a cláusula WHERE é avaliada antes da SELECT.', TRUE),
('019278ad-a75a-74fe-8f7e-7f5510982136', '019278ac-fc99-7842-b4ec-c1dee5abc28f', 'Porque os apelidos só são avaliados depois da cláusula ORDER BY.', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('019278ac-fc99-7842-b4ec-c1dee5abc28f', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('019278af-d9af-7044-bcac-1ef7621d06fe', 'Cláusula WHERE', padronizar_palavra('Cláusula WHERE'));

INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('019278af-fd49-78c9-bd75-501c450d3643', 'SQL', padronizar_palavra('SQL'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('019278ac-fc99-7842-b4ec-c1dee5abc28f', '019278af-d9af-7044-bcac-1ef7621d06fe');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('019278ac-fc99-7842-b4ec-c1dee5abc28f', '019278af-fd49-78c9-bd75-501c450d3643');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:14
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927d35-51f7-7231-adaa-e9a9921edb16', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
(Adaptado do ENADE 2005) Analise o relacionamento existente entre as tabelas
``clubes'' e ``jogadores'', nas alternativas abaixo, e marque a alternativa que
indica que todo jogador deve pertencer a um único clube, e todo clube poder ter
ou não jogadores.');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927d36-40e3-7137-8b33-df53a8287c89', '01927d35-51f7-7231-adaa-e9a9921edb16', '\includegraphics[scale=2.0]{87c89_Cardinalidade de Relacionamentos_1.png} \vspace{0.5cm}', FALSE),
('01927d36-57ce-787f-a81b-fbad30328d0d', '01927d35-51f7-7231-adaa-e9a9921edb16', '\includegraphics[scale=2.0]{28d0d_Cardinalidade de Relacionamentos_1.png} \vspace(0.5cm}', TRUE),
('01927d36-6be2-7322-8355-98d45ac2d556', '01927d35-51f7-7231-adaa-e9a9921edb16', '\includegraphics[scale=2.0]{2d556_Cardinalidade de Relacionamentos_1.png} \vspace{0.5cm}', FALSE),
('01927d36-8341-7913-855c-f787761163d6', '01927d35-51f7-7231-adaa-e9a9921edb16', '\includegraphics[scale=2.0]{163d6_Cardinalidade de Relacionamentos_1.png} \vspace{0.5cm}', FALSE),
('01927d36-9b5d-7727-9ecf-8935a673006a', '01927d35-51f7-7231-adaa-e9a9921edb16', '\includegraphics[scale=2.0]{3006a_Cardinalidade de Relacionamentos_1.png} \vspace{0.5cm}', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927d35-51f7-7231-adaa-e9a9921edb16', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927d3a-151b-77e1-ae95-e9fcf5e311f4', 'Cardinalidade de Relacionamentos', padronizar_palavra('Cardinalidade de Relacionamentos'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d35-51f7-7231-adaa-e9a9921edb16', '01927d3a-151b-77e1-ae95-e9fcf5e311f4');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:15
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927d3a-e50c-7205-bf0a-cc93a118761c', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
(Adaptado do ENADE 2005) Avalie o seguite diagrama relacional de um banco de dados:
\begin{figure}[H]
  \centering
  \caption{Banco de dados de peças e fornecedores}
  \label{fig:pecas}
  %\fbox{
    \includegraphics[scale=2.0]{8761c_3286b_SQL_Banco de Dados Relacional_Cardinalidade de Relacionamentos_Modelagem de Dados_1.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Assinale a opção que apresenta um comando SQL que permite obter uma lista que
contenha o nome de cada fornecedor que tenha fornecido alguma peça, o código da
peça fornecida, a descrição dessa peça e a quantidade fornecida da referida
peça.');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927d3b-5610-7aec-ae30-b6e433e71f58', '01927d3a-e50c-7205-bf0a-cc93a118761c', '\begin{verbatim}SELECT * FROM pecas INNER JOIN fornecedores INNER JOIN fornecimentos;\end{verbatim} ', FALSE),
('01927d3b-6cdb-7643-a4e6-98b1b8efd29b', '01927d3a-e50c-7205-bf0a-cc93a118761c', '\begin{verbatim}SELECT * FROM pecas INNER JOIN fornecimentos f ON (p.codigo = f.cod_peca) INNER JOIN fornecedores f2 ON (f.cod_forn = f2.cod_forn) ORDER BY f2.nome;\end{verbatim} ', FALSE),
('01927d3b-8835-7fd6-856d-2898c7501989', '01927d3a-e50c-7205-bf0a-cc93a118761c', '\begin{verbatim}SELECT f2.nome, p.codigo, p.descricao, f.quantidade FROM pecas INNER JOIN fornecimentos f ON (p.codigo = f.cod_peca) INNER JOIN fornecedores f2 ON (f.cod_forn = f2.cod_forn);\end{verbatim} ', TRUE),
('01927d3b-9b6b-7d51-9abc-11dbd727f026', '01927d3a-e50c-7205-bf0a-cc93a118761c', '\begin{verbatim}SELECT nome, codigo, descricao, quantidade FROM pecas INNER JOIN FORNECEDORES INNER JOIN FORNECIMENTOS;\end{verbatim} ', FALSE),
('01927d3b-aeac-739e-a381-34dafe049319', '01927d3a-e50c-7205-bf0a-cc93a118761c', '\begin{verbatim}SELECT DISTINCT p.nome, p.codigo, p.descricao, f.quantidade FROM pecas p INNER JOIN fornecimentos f ON (p.codigo = f.cod_peca);\end{verbatim} ', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927d3a-e50c-7205-bf0a-cc93a118761c', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927d3b-c410-75e9-bcdf-f83039f89f71', 'SQL', padronizar_palavra('SQL'));

INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927d40-44c9-7690-852e-80609d049cd2', 'Banco de Dados Relacional', padronizar_palavra('Banco de Dados Relacional'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d3a-e50c-7205-bf0a-cc93a118761c', '01927d3b-c410-75e9-bcdf-f83039f89f71');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d3a-e50c-7205-bf0a-cc93a118761c', '01927d40-44c9-7690-852e-80609d049cd2');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:16
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927d41-97e3-7872-949d-fd6e4283286b', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Analise o diagrama relacional do banco de dados exibido na figura abaixo:
\begin{figure}[H]
  \centering
  \caption{Banco de dados de peças e fornecedores}
  \label{fig:pecas}
  %\fbox{
    \includegraphics[scale=2.0]{8761c_3286b_SQL_Banco de Dados Relacional_Cardinalidade de Relacionamentos_Modelagem de Dados_1.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Podemos dizer que esse banco de dados ilustra:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927d42-41ba-7572-8d7c-9d5b5a121649', '01927d41-97e3-7872-949d-fd6e4283286b', 'Um relacionamento com cardinalidade N:N entre as tabelas ``pecas'' e ``fornecedores'', realizado através de relacionamentos identificados através da tabela ``fornecimentos''. ', TRUE),
('01927d42-6068-726d-9fcf-3d8ddf096ddf', '01927d41-97e3-7872-949d-fd6e4283286b', 'Um relacionamento com cardinalidade N:N entre as tabelas ``pecas'' e ``fornecimentos'', realizado através de relacionamentos não identificados com a tabela ``fornecedores''. ', FALSE),
('01927d42-7435-754d-8837-325fa72a5dc9', '01927d41-97e3-7872-949d-fd6e4283286b', 'Um relacionamento com cardinalidade 1:N entre as tabelas ``pecas'' e ``fornecedores'', indicando que uma peça pode ter sido fornecida por diversos fornecedores. ', FALSE),
('01927d42-87c6-7958-85f4-66f2d3c2d0cf', '01927d41-97e3-7872-949d-fd6e4283286b', 'Um relacionamento com identificação N:N entre as tabelas ``pecas'' e ``fornecedores'', realizado através do relacionamento com cardinalidade identificada através da tabela ``fornecimentos''. ', FALSE),
('01927d42-a635-7fd4-b14c-277268590da2', '01927d41-97e3-7872-949d-fd6e4283286b', 'Um relacionamento com cardinalidade N:N entre as tabelas ``pecas'' e ``fornecedores'', realizado através de relacionamentos não identificados através da tabela ``fornecimentos''. ', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927d41-97e3-7872-949d-fd6e4283286b', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01927d45-4892-74e6-805e-2466fe3dcb73', 'Modelagem de Dados', padronizar_palavra('Modelagem de Dados'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d41-97e3-7872-949d-fd6e4283286b', '01927d3a-151b-77e1-ae95-e9fcf5e311f4');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d41-97e3-7872-949d-fd6e4283286b', '01927d45-4892-74e6-805e-2466fe3dcb73');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:17
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927d47-f190-7792-a211-bc3c2aa87c15', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Avalie o banco de dados de professores e alunos, mostrado a seguir. Esse banco
de dados pretende armazenar todas as turmas, sendo que um professor pode dar
aula para vários alunos ao mesmo tempo, e um mesmo aluno pode ter aula com
diferentes professores ao mesmo tempo.
\begin{figure}[H]
  \centering
  \caption{Professores, turmas e alunos}
  \label{fig:professores}
  %\fbox{
    \includegraphics[scale=2.0]{87c15_Cardinalidade de Relacionamentos_Modelagem de Dados_1.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Esse banco de dados resolveráo problema de armazenar os dados das turmas?');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01927d4e-78de-7bd3-9d60-3be1e667219a', '01927d47-f190-7792-a211-bc3c2aa87c15', 'Não, pois as cardinalidades e os sentidos dos relacionamentos entre ''professores'' e ''turmas'', e entre ''turmas'' e ''alunos'' não cria um relacionamento N:N entre ''professores'' e ''alunos''.', TRUE),
('01927d4e-9410-7d61-bc6b-3b87f41bb51b', '01927d47-f190-7792-a211-bc3c2aa87c15', 'Sim, pois as cardinalidades e os sentidos dos relacionamentos entre ''professores'' e ''alunos'' indica, no final, um relacionamento N:N entre essas duas tabelas.', FALSE),
('01927d4e-a96a-7dc9-be74-e8755f14b1b0', '01927d47-f190-7792-a211-bc3c2aa87c15', 'Não, pois o relacionamento entre ''turmas'' e ''professores'' está errado: a PK ''cod_turma'' deveria ter ido para a tabela ''professores'' como uma FK, mas no diagrama está ao contrário.', FALSE),
('01927d4e-c24d-721d-a6e3-5f9a44766a0f', '01927d47-f190-7792-a211-bc3c2aa87c15', 'Sim, pois o diagrama mostra claramente que um professor pode ter zero ou mais turmas, e cada aluno pode participar de zero ou mais turmas também.', FALSE),
('01927d4e-db73-7ab5-a522-e2eb0771ec6b', '01927d47-f190-7792-a211-bc3c2aa87c15', 'Não é possível determinar somente avaliando o diagrama exibido, seriam necessárias mais informações do dicionário de dados.', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927d47-f190-7792-a211-bc3c2aa87c15', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d47-f190-7792-a211-bc3c2aa87c15', '01927d3a-151b-77e1-ae95-e9fcf5e311f4');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d47-f190-7792-a211-bc3c2aa87c15', '01927d45-4892-74e6-805e-2466fe3dcb73');

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:18
--------------------------------------------------------------------------------

-- Bancos de dados 1: 019230bc-08a9-7f9b-b413-411ed5b7e194
-- Classificacao: 0192785b-927b-7faa-ac7a-a5f00578c203

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01927d51-4bfc-74aa-9785-e2806646a493', '0192785b-927b-7faa-ac7a-a5f00578c203', 'O',
'\question
Quando Edgar Codd cricou o modelo relacional de dados,
também criou algumas regras para que a estrutura das tabelas fosse adequada às
operações de inserção, atualização, remoção e busca de dados. Ao avaliar um
banco de dados que armazena dados dos eleitores, dos partidos e dos candidatos
de uma eleição, você encontrou a situação ilustrada na tabela abaixo:
\begin{figure}[H]
  \centering
  \includegraphics[scale=0.35]{imagens/6a493_Banco de Dados Relacional_1.png}
\end{figure}
Em relação às boas normas de projeto do modelo relacional, assinale a
alternativa que corretamente identifica um problema no projeto desta tabela:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '01927d51-4bfc-74aa-9785-e2806646a493', 'A tabela está misturando dados de três entidades diferentes, eleitores, partidos e candidatos (o correto seria que cada tabela armazenasse dados de um único assunto ou entidade).', FALSE),
('', '01927d51-4bfc-74aa-9785-e2806646a493', 'A tabela contém um atributo multivalorado (o correto seria que cada tabela não tivesse atributos multivalorados).', FALSE),
('', '01927d51-4bfc-74aa-9785-e2806646a493', 'A chave primária para a tabela não está definida e, somente olhando as colunas, não é possível dizer se é a coluna ''numero'' ou a coluna ''titulo''.', FALSE),
('', '01927d51-4bfc-74aa-9785-e2806646a493', 'Apesar do telefone ser um atributo multivalorado, do jeito que a tabela está criada só é possível armazenar dois números de telefones, criando uma restrição ao armazenamento de telefones de contado de eleitores que tenham mais de dois telefones.', FALSE),
('', '01927d51-4bfc-74aa-9785-e2806646a493', 'Todas as afirmativas anteriores.', TRUE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01927d51-4bfc-74aa-9785-e2806646a493', '019230bc-08a9-7f9b-b413-411ed5b7e194');

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01927d51-4bfc-74aa-9785-e2806646a493', '01927d40-44c9-7690-852e-80609d049cd2');

