-- Linguagens de Programação: 019230bd-0508-7e1f-8ce5-3fb9d596e25a

-- Gerar UUID v7:
SELECT gerar_uuid7();

--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01924ccd-a497-78cd-a17e-b687b6b62208', '01924ce0-de15-71f0-a465-dfceb3353c8c', 'O',
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
('01924cd1-9cb0-7936-9070-9b703b0c746a', '01924ccd-a497-78cd-a17e-b687b6b62208', 'Aprender a sintaxe e a semântica de uma determinada linguagem', TRUE),
('01924cd1-64f4-7d64-bdae-b271f369e897', '01924ccd-a497-78cd-a17e-b687b6b62208', 'Avanço geral da computação', FALSE),
('01924cd1-bbc0-712d-adc9-89403e463ebd', '01924ccd-a497-78cd-a17e-b687b6b62208', 'Entender a importância da implementação', FALSE),
('01924cd1-df06-762c-9d92-9eeec5061b11', '01924ccd-a497-78cd-a17e-b687b6b62208', 'Melhorar o embasamento na escolha das linguagens para um projeto', FALSE),
('01924cd2-023e-7146-9573-0c17e2c17c9a', '01924ccd-a497-78cd-a17e-b687b6b62208', 'Aumentar a capacidade de expressar idéias', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas VALUES
('01924ccd-a497-78cd-a17e-b687b6b62208', '019230bd-0508-7e1f-8ce5-3fb9d596e25a');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01924ce6-afab-7b53-a166-ec95f0353388', 'motivo', padronizar_palavra('motivo'));

INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01924ceb-d986-7dc7-91e8-3db742067ee6', 'estudo', padronizar_palavra('estudo'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01924ccd-a497-78cd-a17e-b687b6b62208', '01924ce6-afab-7b53-a166-ec95f0353388');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01924ccd-a497-78cd-a17e-b687b6b62208', '01924ceb-d986-7dc7-91e8-3db742067ee6');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('01924cff-6c24-7de2-9a79-a62582c34607', '01924ce0-de15-71f0-a465-dfceb3353c8c', 'O',
'\question
São linguagens clássicas que representam aplicações científicas, aplicações 
comerciais, aplicações de inteligência artificial, e aplicações gerais,
respectivamente:');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('01924d00-8849-72c7-aaef-878361f685f4', '01924cff-6c24-7de2-9a79-a62582c34607', 'Fortran, COBOL, LISP, C', TRUE),
('01924d00-c4d2-7821-99c9-c5309a508154', '01924cff-6c24-7de2-9a79-a62582c34607', 'COBOL, Java, LISP, Fortran', FALSE),
('01924d00-f17f-794c-9e2f-5594746b80f4', '01924cff-6c24-7de2-9a79-a62582c34607', 'Java, MATLAB, Scheme, JavaScript', FALSE),
('01924d01-18d8-7aea-961b-57a67f8f2690', '01924cff-6c24-7de2-9a79-a62582c34607', 'R, COBOL, C, Python', FALSE),
('01924d01-42f4-7e25-aec4-cafcef002232', '01924cff-6c24-7de2-9a79-a62582c34607', 'MATLAB, COBOL, SML, LISP', FALSE);

-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('01924cff-6c24-7de2-9a79-a62582c34607', '019230bd-0508-7e1f-8ce5-3fb9d596e25a');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01924d07-c456-7de9-afa7-b2f3ab0310f4', 'aplicações', padronizar_palavra('aplicações'));

INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('01924d09-2e52-798d-b4fc-d701c3abeeaf', 'aplicação', padronizar_palavra('aplicação'));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01924cff-6c24-7de2-9a79-a62582c34607', '01924d07-c456-7de9-afa7-b2f3ab0310f4');

INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('01924cff-6c24-7de2-9a79-a62582c34607', '01924d09-2e52-798d-b4fc-d701c3abeeaf');


/*
--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');


--------------------------------------------------------------------------------
-- QUESTÃO OBJETIVA:
--------------------------------------------------------------------------------

-- 1) INSERIR A QUESTÃO (na classificação correta):
INSERT INTO questoes (cod_questao, cod_classificacao, tipo_questao, enunciado) VALUES
('', '', 'O',
'');

-- 2) INSERIR AS ALTERNATIVAS DA QUESTÃO (se múltipla escolha):
INSERT INTO alternativas (cod_alternativa, cod_questao, enunciado, correta) VALUES
('', '', '', TRUE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE),
('', '', '', FALSE);


-- 3) RELACIONAR A QUESTÃO COM A DISCIPLINA:
INSERT INTO questoes_disciplinas (cod_questao, cod_disciplina) VALUES
('', '');

-- 4) INSERIR TAGS ÚTEIS QUE PODEM SERVIR PARA A QUESTÃO (pesquisar se já existe):
INSERT INTO tags (cod_tag, tag, tag_padronizada) VALUES
('', '', padronizar_palavra(''));

-- 5) RELACIONAR A QUESTÃO COM AS TAGS (recém-criadas ou já existentes):
INSERT INTO questoes_tags (cod_questao, cod_tag) VALUES
('', '');

*/