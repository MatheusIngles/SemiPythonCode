insert into questoes (tipo_questao, enunciado) values
('O', '\question
A arquitetura ilustrada na figura abaixo é um exemplo típico de qual sistema?
(CU = unidade de controle; IS = \ingles(stream} de instruções; PU = unidade de
processamento; DS = \ingles{stream} de dados; LM = memória local)
\begin{figure}[H]
\begin{center}
\includegraphics[scale=0.5]{arq-cluster.png}
\end{center}
\end{figure}
\vspace{-1cm}');

insert into alternativas (cod_questao, enunciado, correta) values
(1, 'Multiprocessadores simétricos', FALSE),
(1, 'Clusters', TRUE),
(1, 'Processadores seqüenciais', FALSE),
(1, 'Processadores multicore', FALSE),
(1, 'Acesso não uniforme à memória', FALSE);

insert into questoes (tipo_questao, enunciado) values
('O', '\question
Qual arquitetura de processamento paralelo exibe as características abaixo?
\begin{itemize}[noitemsep]
\item O tempo de acesso à memória é igual para cada processador
\item Há dois ou mais processadores semelhantes, de capacidade comparável
\item Os processadores compartilham a mesma memória e os recursos de I/O
\item Os processadores desempenham as mesmas funções
\end{itemize}');

insert into alternativas (cod_questao, enunciado, correta) values
(2, 'Processamento seqüencial', FALSE),
(2, 'Acesso não uniforme à memória', FALSE),
(2, 'Multithreading', FALSE),
(2, 'Clusters', FALSE),
(2, 'Multiprocessadores simétricos', TRUE);
/*
insert into questoes (tipo_questao, enunciado) values
('O', '\question
A figura abaixo mostra a execução de seis processos em um computador ao longo
do tempo (a cor mais clara indica momentos em que o processo está em execução).
Percebe-se que esse computador tem a arquitetura de:
\vspace{-0.5cm}
\begin{figure}[H]
\begin{center}
\includegraphics[scale=0.4]{multiproc.png}
\end{center}
\end{figure}
\vspace{-1cm}');

insert into alternativas (cod_questao, enunciado, correta) values
(3, 'Multiprogramação com 2 processadores', FALSE),
(3, 'Multiprocessamento com 2 processadores', FALSE),
(3, 'Multiprogramação com 4 processadores', FALSE),
(3, 'Multiprocessamento com 4 processadores', TRUE),
(3, 'Nenhuma das alternativas anteriores', FALSE);
*/
insert into questoes (tipo_questao, enunciado) values
('O', '\question
Considere 4 threads (A, B, C e D). Um determinado sistema executa essas threads
ao longo do tempo realizando trocas entre elas, conforme a figura abaixo.
Que arquitetura de multithreading é essa?
\vspace{-1cm}
\begin{figure}[H]
\begin{center}
\includegraphics[scale=0.3]{multithread-superescalar-intercalado.png}
\end{center}
\end{figure}
\vspace{-1cm}');

insert into alternativas (cod_questao, enunciado, correta) values
(3, 'Multithreading escalar intercalado', FALSE),
(3, 'Multithreading superescalar intercalado', TRUE),
(3, 'Mutithreading simultâneo', FALSE),
(3, 'Multithreading superescalar bloqueado', FALSE),
(3, 'Multithreading escalar bloqueado', FALSE);

insert into questoes (tipo_questao, enunciado) values
('O', '\question
Em que modelo de computação em nuvem o provedor é reponsável pelo hardware
e sistema operacional e você é responsável pelas aplicações e dados?');

insert into alternativas (cod_questao, enunciado, correta) values
(4, 'On premises', FALSE),
(4, 'IaaS', FALSE),
(4, 'PaaS', TRUE),
(4, 'SaaS', FALSE),
(4, 'HaaS', FALSE);

insert into questoes (tipo_questao, enunciado) VALUES(
'O','\question
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
bancos de dados escolheu um:'
);

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(5,'SGBD Grafo, para armazenar todos os relacionamentos entre os usuários do transporte público nos ônibus.', FALSE),
(5,'SGBD Relacional, para armazenar de forma otimizada os dados que, em sua maioria, são altamente estruturados.', TRUE),
(5,'SGBD Hierárquico, para armazenar corretamente e de forma otimizada todas os relacionamentos entre os ônibus, empregados e passageiros do transporte público.', FALSE),
(5,'SGBD Não Relacional (NoSQL) já que, para armazenar todos os dados e ainda permitir a consulta pelos usuários na Internet, o melhor seria utilizar uma solução com bancos de dados não relacionais que são otimizados para uso na web.', FALSE),
(5,'Nenhuma das respostas acima.', FALSE);

insert into questoes (tipo_questao, enunciado) VALUES(
'O','\question
Na definição da aquisição de um novo software de gerenciamento de bancos de dados (SGBD) para uma empresa da área de transporte
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
bancos de dados escolheu um:'
);

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(7,'SGBD Grafo, para armazenar todos os relacionamentos entre os usuários do transporte público nos ônibus.', FALSE),
(7,'SGBD Relacional, para armazenar de forma otimizada os dados que, em sua maioria, são altamente estruturados.', TRUE),
(7,'SGBD Hierárquico, para armazenar corretamente e de forma otimizada todas os relacionamentos entre os ônibus, empregados e passageiros do transporte público.', FALSE),
(7,'SGBD Não Relacional (NoSQL) já que, para armazenar todos os dados e ainda permitir a consulta pelos usuários na Internet, o melhor seria utilizar uma solução com bancos de dados não relacionais que são otimizados para uso na web.', FALSE),
(7,'Nenhuma das respostas acima.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
('O', '\question
Os Sistemas de Bancos de Dados (SBD) são essenciais hoje em dia, tanto para
pessoas físicas quanto para pessoas jurídicas. Assinale a alternativa que não
representa adequadamente a importância do uso de um SBD:');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(8, 'Permitem que as empresas criem sites na Internet de modo que os próprios usuários consigam consultar e atualizar alguns dados.', FALSE),
(8, 'Permitem consultas históricas, de modo otimizado, para que alguma informação atual possa ser comparada com dados anteriores.', FALSE),
(8, 'Permitem às empresas coletar, armazenar, agregar, manipular e gerenciar dados, tomando assim melhores decisões de negócios e fornecendo diversos serviços úteis aos seus clientes.', FALSE),
(8, 'Permitem que as empresas tenham mecanismos de obedecer à Lei Geral de Proteção de Dados Pessoais (LGPD), impedindo processos de anonimização das informações.', TRUE),
(8, 'Permitem que as empresas criem aplicativos para telefones celulares, oferecendo serviços aos seus usuários.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
('O', '\question
Quando dizemos que um banco de dados é em \ingles{cloud} e centralizado, estamos
nos referindo, respectivamente, à localização dos dados e da
infraestrutura. Verdadeiro ou falso?');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(9, 'Não é possível determinar com os dados apresentados.', FALSE),
(9, 'Verdadeiro', FALSE),
(9, 'Falso', TRUE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
('O', '\question
Você estava ouvindo a discussão de dois colegas, o João e a Maria. Enquanto o
João afirmava que o conceito de banco de dados (BD) é extremamente diferente do
conceito de sistema de gerenciamento de bancos de dados (SGBD), a Maria
discordava e afirmava que o banco de dados nada mais é do que um componente do
SGBD. Nesse momento o professor entrou na sala, percebeu a discussão e falou
que:');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(10, 'Os dois estavam certos pois o conceito, na prática, depende da situação específica que se está considerando.', FALSE),
(10, 'Os dois estavam errados pois não são conceitos separados nem componentes, são conceitos sinônimos.', FALSE),
(10, 'Não é possível saber quem estava certo ou errado pois não definiram qual o modelo de dados que estava sendo considerado na discusão.', FALSE),
(10, 'A Maria estava certa já que o banco de dados é, realmente, um componente interno do sistema de gerenciamento de bancos de dados e não existe de forma independente.', FALSE),
(10, 'O João estava certo já que o banco de dados é, realmente, um conceito diferente do conceito do sistema de gerenciamento de bancos de dados, e existe de forma independente.', TRUE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
('O', '\question
A sentença descritiva resultante de um processo de mensuração, correspondendo a
um fato bruto observado/conhecido que pode ser registrado, que não foi
processado para revelar seu significado/importância, que tem um certo
significado implícito e que deve estar corretamente formatado para o
armazenamento, processamento e apresentação é:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(11, 'Processamento', FALSE),
(11, 'Sabedoria', FALSE),
(11, 'Conhecimento', FALSE),
(11, 'Informação', FALSE),
(11, 'Dado', TRUE);

/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES
('O', '\question
Costuma-se classificar os dados a serem armazenados em sistemas de gerenciamento
de bancos de dados da seguinte maneira:
\begin{itemize}
\item[A.] Dados estruturados
\item[B.] Dados não estruturados
\item[C.] Dados semi-estruturados
\end{itemize}

Faça uma correspondência entre os itens acima (A, B e C) e as descrições a
seguir:
\begin{itemize}
\item[(\ \ \ )] São dados que possuem uma estrutura rígida, projetada
                previamente, onde cada campo tem um formato fixo bem definido
               (texto, número, data). Podem ser facilmente armazenados em
               tabelas pois foram formatados para facilitar o armazenamento, uso
               e geração de informação.
\item[(\ \ \ )] São dados que possuem estrutura, mas o conteúdo é flexível e
               pode variar de caso a caso. Possuem algumas características
               pré-definidas mas não se limitam a uma estrutura rígida. Alguns
               exemplos são arquivos HTML, XML e JSON.
\item[(\ \ \ )] São dados que não possuem uma estrutura definida (podem ter
               apenas uma estrutura mínima de arquivo), não tem um
               padrão pré-estabelecido. São flexíveis, variáveis, imprevisíveis
               e dinâmicos, podendo ser compostos por diversos elementos
               diferentes tais como: postagens em redes sociais, imagens,
               multimídia e documentos como e-mails ou texto.
\end{itemize}

Assinale a alternativa que contém, de cima para baixo, a seqüência correta das
letras A, B e C:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(11, 'Seqüência: B C A', FALSE),
(11, 'Seqüência: A B C', FALSE),
(11, 'Seqüência: C B A', FALSE),
(11, 'Seqüência: A C B', TRUE),
(11, 'Seqüência: B A C', FALSE);
*/

INSERT INTO questoes (tipo_questao, enunciado) VALUES
('O', '\question
Quando nos referimos à propriedade auto-descritiva dos bancos de dados estamos
trabalhando, fundamentalmente, com o conceito de:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(12, 'Armazenamento', FALSE),
(12, 'Metadados', TRUE),
(12, 'Relacionamentos', FALSE),
(12, 'Usuários', FALSE),
(12, 'SQL', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
('O', '\question
Um banco de dados OLAP (Online Analytical Processing --- Processamento Analítico
Online) é um banco de dados organizado de forma a dar suporte ao Business
Intelligence (BI --- Inteligência de Negócio) que, de forma simplificada, é o
processo de analisar dados para obter informações que podem ser utilizadas na
tomada de decisões comerciais e estratégicas. Em relação aos bancos de dados
OLAP, marque a afirmação correta:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(13, 'São otimizados para o processamento de grande volume de dados históricos e métricas de negócio para a tomada de decisões estratégicas, permitindo e facilitando a análise de dados para a geração de informações e conhecimentos para a tomada de decisões.', TRUE),
(13, 'São otimizados para consulta e relatórios de rotina de dados.', FALSE),
(13, 'São preparados para responder perguntas do tipo ``Quais alunos estão matriculados na turma de Bancos de Dados I neste semestre?''', FALSE),
(13, 'São otimizados para o processamento de grande volume de transações diárias, o que permite a análise e a tomada de decisões em tempo real, favorecendo assim a administração empresarial.', FALSE),
(13, 'Geralmente os dados de origem do OLTP são de bancos de dados OLAP.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
Um banco de dados (BD) é uma coleção logicamente coerente de dados relacionados
e persistentes. Em relação às características de um banco de dados, assinale a
alternativa verdadeira:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(14, 'Geralmente é projetado e usado para finalidades gerais, sendo extremamente genéricos e adaptáveis para qualquer situação.', FALSE),
(14, 'Representa um aspecto (ou parte) do mundo real, parte essa chamada de ``catálogo'' ou ``dicionário de dados``.', FALSE),
(14, 'Não precisam ser obrigatoriamente computadorizados, existem bancos de dados manuais e/ou em papel.', TRUE),
(14, 'Não precisa de dados atuais e verdadeiros para ser útil (para representar corretamente a realidade atual).', FALSE),
(14, 'Armazena dois grandes ``tipos`` de dados: os dados do usuário final e os metadados, sendo que os metadados ficam armazenados nas mesmas tabelas que os dados dos usuários e isso nos permite saber a estrutura dos bancos de dados.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
Em relação aos metadados de um banco de dados, assinale a afirmação correta:
' );

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(15, 'Armazenam informações sobre os dados dos usuários, ou seja, são dados de rotina dos usuários, aqueles dados que os usuários precisam para trabalhar no seu dia a dia.', FALSE),
(15, 'São armazenados no catálogo (ou dicionário de dados) do sistema de gerenciamento de bancos de dados, que fica nas mesmas tabelas de dados dos usuários, permitindo assim que os metadados estejam sempre atualizados.', FALSE),
(15, 'Armazenam informações como os dados de cadastro dos usuários, os valores de compra em uma ordem de compra, as turmas e disciplinas que os professores dão aula, e dados de recursos humanos.', FALSE),
(15, 'Como são sempre atualizados de forma automática pelo sistema de gerenciamento de bancos de dados, estão sempre prontos para nos dar uma ``foto'' da estrutura do banco de dados em um momento no tempo.', TRUE),
(15, 'São atualizados pelo SGBD, sempre que ocorre alguma operação de inserção, atualização ou remoção de dados.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
Um sistema de gerenciamento de bancos de dados (SGBD) é um software servidor
que nos permite definir, construir, manipular, integrar e compartilhar bancos
de dados entre diversos usuários e aplicações. São exemplos de
SGBD, \textbf{exceto}:');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(16, 'PostgreSQL', FALSE),
(16, 'Oracle Database', FALSE),
(16, 'Oracle SQL Developer', TRUE),
(16, 'SQL Server', FALSE),
(16, 'MongoDB', FALSE);

/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
Considere as afirmações a seguir, a respeito das funcionalidades dos sistemas de
gerenciamento de bancos de dados (SGBD):
\begin{itemize}
\item[I.] Os SGBD que apresentam interfaces gráficas fáceis e amigáveis são
          melhores do que os SGBD sem interfaces gráficas
          \begin{equation*}
          \text{PORQUE}
          \end{equation*}
          \vspace{-0.8cm}
\item[II.] as interfaces gráficas apresentam menos funcionalidades
           avançadas aos usuários do que, por exemplo, o uso de aplicações
           clientes na linha de comando.
\end{itemize}
A respeito dessas afirmações, assinale a alternativa correta:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(17, 'A primeira afirmação é verdadeira e a segunda é falsa.', FALSE),
(17, 'A primeira afirmação é falsa e a segunda é verdadeira.', TRUE),
(17, 'As duas afirmações são verdadeiras e a segunda é uma justificativa correta da primeira.', FALSE),
(17, 'As duas afirmações são verdadeiras e a segunda não é uma justificativa correta da primeira.', FALSE),
(17, 'As duas afirmações são falsas.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
Em relação à instância de um SGBD, considere as seguintes afirmações:
\begin{itemize}[noitemsep]
\item[I.] É o software do SGBD que está em execução na memória do computador.
\item[II.] Em geral uma instância acessa mais de um banco de dados.
\item[III.] Um banco de dados pode ser acessado por mais de uma instância.
\end{itemize}
Assinale a opção correta:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(18, 'Existem 2 afirmações verdadeiras e 1 afirmação falsa.', TRUE),
(18, 'Existem 2 afirmações falsas e 1 afirmação verdadeira.', FALSE),
(18, 'Todas as afirmações são falsas.', FALSE),
(18, 'Todas as afirmações são verdadeiras.', FALSE),
(18, 'Nenhuma das respostas acima.', FALSE);
*/
INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
O usuário que não é da área de tecnologia, costuma ser de alta gerência, que é
especialista no negócio e tem a responsabilidade central pelas políticas de
dados da empresa é o:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(17, 'Encarregado da Proteção de Dados (DPO: Data Protection Officer)', FALSE),
(17, 'Administrador do Banco de Dados (DBA: Database Administrator)', FALSE),
(17, 'Gerente de Tecnologia da Informação (ITM: IT Manager)', FALSE),
(17, 'Coordenador de Tecnologia da Informação (ITS: IT Supervisor)', FALSE),
(17, 'Administrador de Dados (DA: Data Administrator)', TRUE);

/* Imagem
INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
(Adaptado do ENADE 2005) Analise o relacionamento existente entre as tabelas
``clubes'' e ``jogadores'', nas alternativas abaixo, e marque a alternativa que
indica que todo jogador deve pertencer a um único clube, e todo clube poder ter
ou não jogadores.
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(20, '\includegraphics[scale=2.0]{cj1.png} \vspace{0.5cm}', FALSE),
(20, '\includegraphics[scale=2.0]{cj4.png} \vspace(0.5cm}', TRUE),
(20, '\includegraphics[scale=2.0]{cj3.png} \vspace{0.5cm}', FALSE),
(20, '\includegraphics[scale=2.0]{cj5.png} \vspace{0.5cm}', FALSE),
(20, '\includegraphics[scale=2.0]{cj2.png} \vspace{0.5cm}', FALSE);


INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
(Adaptado do ENADE 2005) Avalie o seguite diagrama relacional de um banco de dados:
\begin{figure}[H]
  \centering
  \caption{Banco de dados de peças e fornecedores}
  \label{fig:pecas}
  %\fbox{
    \includegraphics[scale=2.0]{pecas-fornecedores.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Assinale a opção que apresenta um comando SQL que permite obter uma lista que
contenha o nome de cada fornecedor que tenha fornecido alguma peça, o código da
peça fornecida, a descrição dessa peça e a quantidade fornecida da referida
peça.
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(21, '\begin{verbatim}SELECT * FROM pecas INNER JOIN fornecedores INNER JOIN fornecimentos;\end{verbatim} ', FALSE),
(21, '\begin{verbatim}SELECT * FROM pecas INNER JOIN fornecimentos f ON (p.codigo = f.cod_peca) INNER JOIN fornecedores f2 ON (f.cod_forn = f2.cod_forn) ORDER BY f2.nome;\end{verbatim} ', FALSE),
(21, '\begin{verbatim}SELECT f2.nome, p.codigo, p.descricao, f.quantidade FROM pecas INNER JOIN fornecimentos f ON (p.codigo = f.cod_peca) INNER JOIN fornecedores f2 ON (f.cod_forn = f2.cod_forn);\end{verbatim} ', TRUE),
(21, '\begin{verbatim}SELECT nome, codigo, descricao, quantidade FROM pecas INNER JOIN FORNECEDORES INNER JOIN FORNECIMENTOS;\end{verbatim} ', FALSE),
(21, '\begin{verbatim}SELECT DISTINCT p.nome, p.codigo, p.descricao, f.quantidade FROM pecas p INNER JOIN fornecimentos f ON (p.codigo = f.cod_peca);\end{verbatim} ', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
Analise o diagrama relacional do banco de dados exibido na figura abaixo:
\begin{figure}[H]
  \centering
  \caption{Banco de dados de peças e fornecedores}
  \label{fig:pecas}
  %\fbox{
    \includegraphics[scale=2.0]{pecas-fornecedores.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Podemos dizer que esse banco de dados ilustra:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(22, 'Um relacionamento com cardinalidade N:N entre as tabelas ``pecas'' e ``fornecedores'', realizado através de relacionamentos identificados através da tabela ``fornecimentos''. ', TRUE),
(22, 'Um relacionamento com cardinalidade N:N entre as tabelas ``pecas'' e ``fornecimentos'', realizado através de relacionamentos não identificados com a tabela ``fornecedores''. ', FALSE),
(22, 'Um relacionamento com cardinalidade 1:N entre as tabelas ``pecas'' e ``fornecedores'', indicando que uma peça pode ter sido fornecida por diversos fornecedores. ', FALSE),
(22, 'Um relacionamento com identificação N:N entre as tabelas ``pecas'' e ``fornecedores'', realizado através do relacionamento com cardinalidade identificada através da tabela ``fornecimentos''. ', FALSE),
(22, 'Um relacionamento com cardinalidade N:N entre as tabelas ``pecas'' e ``fornecedores'', realizado através de relacionamentos não identificados através da tabela ``fornecimentos''. ', FALSE);
*/

/* Referencia
 * INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
Ainda considerando o diagrama relacional do banco de dados exibido na
Figura~\ref{fig:pecas}, na página~\pageref{fig:pecas}, podemos dizer que a
tabela ``fornecimentos'':
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(23, 'É uma tabela ``forte'' pois, para que ela exista, ela depende da existência prévia de outras tabelas (``pecas'' e ``fornecedores''). A característica que nos permite fazer essa afirmação é que as colunas que fazem parte da chave primária composta de ``fornecimentos'' também são chaves estrangeiras para outras tabelas, criando assim relacionamentos identificados. ', FALSE),
(23, 'É uma tabela ``fraca'' pois, para que ela exista, ela não depende da existência prévia de outras tabelas (``pecas'' e ``fornecedores''). A característica que nos permite fazer essa afirmação é que as colunas que fazem parte da chave primária composta de ``fornecimentos'' também são chaves estrangeiras para outras tabelas, criando assim relacionamentos não identificados. ', FALSE),
(23, 'É uma tabela ``forte'' pois, para que ela exista, ela não depende da existência prévia de outras tabelas (``pecas'' e ``fornecedores''). A característica que nos permite fazer essa afirmação é que as colunas que fazem parte da chave primária composta de ``fornecimentos'' não são chaves estrangeiras para outras tabelas, criando assim relacionamentos não identificados identificados. ', FALSE),
(23, 'É uma tabela ``fraca'' pois, para que ela exista, ela depende da existência prévia de outras tabelas (``pecas'' e ``fornecedores''). A característica que nos permite fazer essa afirmação é que as colunas que fazem parte da chave primária composta de ``fornecimentos'' também são chaves estrangeiras para outras tabelas, criando assim relacionamentos identificados. ', TRUE),
(23, 'Nenhuma das alternativas anteriores. ', FALSE);*/

/* Caso de é um caractere de escape que permite inserir símbolos especiais
 * INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
(ENADE 2008) Considere o banco de dados relacional apresentado a seguir, formado
por 4 relações, que representa o conjunto de estudantes de uma universidade que
podem, ou não, morar em repúblicas (moradias compartilhadas por estudantes):
\begin{figure}[H]
  \centering
  \caption{Banco de dados de estudantes e repúblicas}
  \label{fig:estudantes}
  %\fbox{
    \includegraphics[scale=2.0]{estudante-republica.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Suponha que existam as seguintes tuplas no banco de dados:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(24, 'estudante(10, \'jsilva@ig.com.br\', null, 20); fone_pessoa(10, \'019\', \'3761\', \'1370\'); ', FALSE),
(24, 'estudante(10, \'jsilva@ig.com.br\', 1, null); fone_pessoa(10, \'019\', \'3761\', \'1370\'); ', FALSE),
(24, 'estudante(10, \'jsilva@ig.com.br\', 1, 20); fone_pessoa(1, null, \'3761\', \'1370\'); ', FALSE),
(24, 'estudante(10, \'jsilva@ig.com.br\', 1, 50); fone_pessoa(1, \'019\', \'3761\', \'1370\'); ', FALSE),
(24, 'estudante(10, \'jsilva@ig.com.br\', 1, null); fone_pessoa(1, \'019\', \'3761\', \'1370\'); ', TRUE);
*/

/* Verificar como vao ficar sem o fig:estudantes
 * INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', 'Analise novamente a Figura~\\ref{fig:estudantes}. Há um erro comum nas tabelas ``pessoa'' e ``republica'', que é:' );

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(25, 'O uso de atributos multivalorados ', FALSE),
(25, 'O uso de atributos compostos ', TRUE),
(25, 'O uso de chave primária com tamanho pequeno ', FALSE),
(25, 'A falta de um relacionamento entre essas tabelas ', FALSE),
(25, 'O atributo ``nome'' deveria ser multivalorado ', FALSE);*/
/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
(ENADE 2011) Considere o diagrama abaixo, que ilustra um banco de dados que
descreve os empregados que trabalham nos departamentos de uma empresa:
\begin{figure}[H]
  \centering
  \caption{Empregados e departamentos}
  \label{fig:empregados}
  %\fbox{
    \includegraphics[scale=2.0]{imagens/dept-emp.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Na linguagem SQL, o comando mais simples para recuperar os códigos dos
departamentos cuja média salarial seja maior do que 2000 é:
');
INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(26, '\begin{verbatim}SELECT cod_departametno
FROM empregados
WHERE AVG(salario) > 2000
GROUP BY cod_departamento;
\end{verbatim}
', FALSE),
(26, '\begin{verbatim}SELECT cod_departamento
FROM empregados
WHERE AVG(salario) > 2000;
\end{verbatim}
', FALSE),
(26, '\begin{verbatim}SELECT cod_departamento
FROM empregados
GROUP BY cod_departamento
HAVING AVG(salario) > 2000;
\end{verbatim}
', TRUE),
(26, '\begin{verbatim}SELECT cod_departametno, AVG(salario) > 2000
FROM empregados
GROUP BY cod_departamento;
\end{verbatim}
', FALSE),
(26, '\begin{verbatim}SELECT cod_departamento
FROM empregados
GROUP BY cod_departamento
ORDER BY AVG(salario) > 2000;
\end{verbatim}
', FALSE);
*/
/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
(Adaptado de ENADE 2011) Considere o diagrama abaixo, que ilustra um banco de
dados que descreve os empregados que trabalham nos departamentos de uma empresa:
\begin{figure}[H]
  \centering
  \caption{Empregados e departamentos}
  \vspace{-0.2cm}
  \label{fig:empregados}
  %\fbox{
    \includegraphics[scale=2]{dept-emp.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
\vspace{-0.4cm}
Na linguagem SQL, o comando mais simples para recuperar os códigos dos
departamentos que contém empregados que ganham menos do que 2000 e mais do que
5000 reais é:
');
INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(27, '\begin{verbatim}SELECT cod_departamento
FROM empregados
WHERE salario <= 2000 AND salario >= 5000;
\end{verbatim}
', FALSE),
(27, '\begin{verbatim}SELECT cod_departamento
FROM empregados
WHERE salario < 2000 AND salario > 5000;
\end{verbatim}
', FALSE),
(27, '\begin{verbatim}SELECT cod_departamento
FROM empregados
WHERE salario < 2000 OR salario > 5000;
\end{verbatim}
', TRUE),
(27, '\begin{verbatim}SELECT cod_departametno
FROM empregados
WHERE salario <= 2000 OR salario >= 5000;
\end{verbatim}
', FALSE),
(27, '\begin{verbatim}SELECT cod_departamento
FROM empregados
WHERE salario BETWEEN 2000 AND 5000;
\end{verbatim}
', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES
( 'O', '\question
(ENADE 2014) Considere o seguinte banco de dados ilustrado no diagrama relaconal
abaixo:
\begin{figure}[H]
  \centering
  \caption{Estados e fornecedores}
  \label{fig:estados}
  %\fbox{
    \includegraphics[scale=2.0]{imagens/uf-forn.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
A expressão SQL que obtém os nomes dos estados para os quais não há fornecedores
cadastrados é:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES
(28, '\begin{verbatim}SELECT e.uf
FROM estado e
WHERE e.nome NOT IN (SELECT f.uf
                     FROM fornecedor f);
\end{verbatim}', FALSE),
(28, '\begin{verbatim}SELECT e.nome
FROM estado e,
FROM fornecedor f
WHERE e.uf = f.uf;
\end{verbatim}
', FALSE),
(28, '\begin{verbatim}SELECT e.nome
FROM estado e,
FROM fornecedor f
WHERE e.nome = f.uf;
\end{verbatim}
', FALSE),
(28, '\begin{verbatim}SELECT e.nome
FROM estado e
WHERE e.uf IN (SELECT f.uf
               FROM fornecedor f);
\end{verbatim}
', FALSE),
(28, '\begin{verbatim}SELECT e.nome
FROM estado e
WHERE e.uf NOT IN (SELECT f.uf
                   FROM fornecedor f);
\end{verbatim}
', TRUE);
*/
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
Por que não podemos utilizar apelidos de coluna na cláusula WHERE da SQL?
' );

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(18, 'Nós podemos utilizar apelidos na cláusula WHERE.', FALSE),
(18, 'Porque a cláusula SELECT é avaliada antes da WHERE.', FALSE),
(18, 'Porque só podemos utilizar aliases, e não apelidos.', FALSE),
(18, 'Porque a cláusula WHERE é avaliada antes da SELECT.', TRUE),
(18, 'Porque os apelidos só são avaliados depois da cláusula ORDER BY.', FALSE);

/* Imagem
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
Avalie o banco de dados de professores e alunos, mostrado a seguir. Esse banco
de dados pretende armazenar todas as turmas, sendo que um professor pode dar
aula para vários alunos ao mesmo tempo, e um mesmo aluno pode ter aula com
diferentes professores ao mesmo tempo.
\begin{figure}[H]
  \centering
  \caption{Professores, turmas e alunos}
  \label{fig:professores}
  %\fbox{
    \includegraphics[scale=2.0]{professor-aluno.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
Esse banco de dados resolveráo problema de armazenar os dados das turmas?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(30, 'Não, pois as cardinalidades e os sentidos dos relacionamentos entre ''professores'' e ''turmas'', e entre ''turmas'' e ''alunos'' não cria um relacionamento N:N entre ''professores'' e ''alunos''.', TRUE),
(30, 'Sim, pois as cardinalidades e os sentidos dos relacionamentos entre ''professores'' e ''alunos'' indica, no final, um relacionamento N:N entre essas duas tabelas.', FALSE),
(30, 'Não, pois o relacionamento entre ''turmas'' e ''professores'' está errado: a PK ''cod_turma'' deveria ter ido para a tabela ''professores'' como uma FK, mas no diagrama está ao contrário.', FALSE),
(30, 'Sim, pois o diagrama mostra claramente que um professor pode ter zero ou mais turmas, e cada aluno pode participar de zero ou mais turmas também.', FALSE),
(30, 'Não é possível determinar somente avaliando o diagrama exibido, seriam necessárias mais informações do dicionário de dados.', FALSE);
*/
/* Begin Verbatim
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
(ENADE 2017) No modelo relacional de dados, uma junção entre tabelas cria uma
outra tabela derivada de duas ou mais tabelas de acordo com os critérios
especificados para a junção, de modo similar às regras da teoria dos
conjuntos. Nos conjuntos a seguir, as áreas hachuradas representam os resultados
das consultas SQL em que ``id'' é uma chave primária e ``fk'' é uma chave
estrangeira:
\begin{figure}[H]
  \centering
  \includegraphics[scale=0.3]{conjuntos1.png}
\end{figure}
Assinale a opção em que a declaração SQL é equivalente ao conjunto apresentado a
seguir:
\begin{figure}[H]
  \centering
  \includegraphics[scale=0.3]{conjuntos2.png}
\end{figure}
');


INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(31, '\begin{verbatim}SELECT *
FROM tabela1 t1
RIGHT JOIN tabela2 t2 ON (t1.id = t2.fk)
WHERE t1.id IS NULL;
\end{verbatim}
', TRUE),
(31, '\begin{verbatim}SELECT *
FROM tabela1 t1
INNER JOIN tabela2 t2 ON (t1.id = t2.fk);
\end{verbatim}
', FALSE),
(31, '\begin{verbatim}SELECT *
FROM tabela1 t1
RIGHT JOIN tabela2 t2 ON (t1.id = t2.fk)
WHERE t2.fk <> NULL;
\end{verbatim}
', FALSE),
(31, '\begin{verbatim}SELECT *
FROM tabela1 t1 WHERE EXISTS (SELECT 1
                              FROM tabela2 t2
                              WHERE t2.id = t1.fk);
\end{verbatim}
', FALSE),
(31, '\begin{verbatim}SELECT *
FROM tabela1 t1
WHERE NOT EXISTS (SELECT 1
                  FROM tabela1 t2
                  WHERE t2.id = tk.fk);
\end{verbatim}
', FALSE);
*/

/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
Quando Edgar Codd cricou o modelo relacional de dados,
também criou algumas regras para que a estrutura das tabelas fosse adequada às
operações de inserção, atualização, remoção e busca de dados. Ao avaliar um
banco de dados que armazena dados dos eleitores, dos partidos e dos candidatos
de uma eleição, você encontrou a situação ilustrada na tabela abaixo:
\begin{figure}[H]
  \centering
  \includegraphics[scale=0.35]{imagens/eleicao.png}
\end{figure}
Em relação às boas normas de projeto do modelo relacional, assinale a
alternativa que corretamente identifica um problema no projeto desta tabela:
');
INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(32, 'A tabela está misturando dados de três entidades diferentes, eleitores, partidos e candidatos (o correto seria que cada tabela armazenasse dados de um único assunto ou entidade).', FALSE),
(32, 'A tabela contém um atributo multivalorado (o correto seria que cada tabela não tivesse atributos multivalorados).', FALSE),
(32, 'A chave primária para a tabela não está definida e, somente olhando as colunas, não é possível dizer se é a coluna ''numero'' ou a coluna ''titulo''.', FALSE),
(32, 'Apesar do telefone ser um atributo multivalorado, do jeito que a tabela está criada só é possível armazenar dois números de telefones, criando uma restrição ao armazenamento de telefones de contado de eleitores que tenham mais de dois telefones.', FALSE),
(32, 'Todas as afirmativas anteriores.', TRUE);
*/

/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
``Um modelo de dados é uma definição lógica, abstrata e auto-contida
dos \circled{1}, \circled{2} e \circled{3} que, juntos, constituem a \circled{4}
com a qual os usuários interagem. Os \circled{1} nos permitem modelar
a \circled{5}; os \circled{2} nos permitem modelar
seu \circled{6}. Os \circled{3} nos permitem modelar sua \circled{7}.''

%As palavras/termos que completam a frase acima, são, conforme os números:
');
INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(33, '1 = objetos; 2 = máquina abstrata; 3 = demais conceitos; 4 = operadores; 5 = estrutura de dados; 6 = comportamento; 7 = integridade.', FALSE),
(33, '1 = operadores; 2 = objetos; 3 = demais conceitos; 4 = máquina abstrata; 5 = estrutura de dados; 6 = comportamento; 7 = integridade.', FALSE),
(33, '1 = objetos; 2 = operadores; 3 = demais conceitos; 4 = máquina abstrata; 5 = estrutura de dados; 6 = comportamento; 7 = integridade.', TRUE),
(33, '1 = demais conceitos; 2 = objetos; 3 = operadores; 4 = estrutura de dados; 5 = máquina abstrata; 6 = integridade; 7 = comportamento.', FALSE),
(33, '1 = objetos; 2 = operadores; 3 = máquina abstrata; 4 = demais conceitos; 5 = estrutura de dados; 6 = integridade; 7 = comportamento.', FALSE);
*/

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', 'Uma definição lógica, abstrata e auto-contida dos objetos que modelam a
estrutura de armazenamento de dados, dos operadores que modelam o comportamento
e dos demais conceitos que modelam a integridade, e que, juntos, constituem a
máquina abstrata com a qual os usuários interagem é chamada de:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(19, 'Banco de dados', FALSE),
(19, 'Modelo entidade-relacionamento', FALSE),
(19, 'Modelo de dados', TRUE),
(19, 'Modelo relacional', FALSE),
(19, 'Nenhuma das respostas acima', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
Ao analisar um novo sistema de gerenciamento de bancos de dados que surgiu no
mercado, você percebe que a entrada às operações do modelo de dados são tabelas
mas as saídas nunca são tabelas, são sempre outras estruturas. O vendedor desse
SGBD afirma que ele é um SGBD relacional. Pode-se afirmar que:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(20, 'Esse SGBD é relacional pois consegue trabalhar com tabelas para a entrada das operações do modelo de dados. A saída não é importante.', FALSE),
(20, 'Esse SGBD não é relacional pois, para ser verdadeiramente relacional, as operações do modelo de dados não podem trabalhar recebendo tabelas como entrada.', FALSE),
(20, 'Esse SGBD é relacional pois o vendedor afirmou que é.', FALSE),
(20, 'Esse SGBD não é relacional pois no modelo relacional a única estrutura percebida pelos usuários são tabelas.', TRUE),
(20, 'Nenhuma das alternativas anteriores.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
São modelos de dados legados, pré-relacionais, exceto:
' );

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(21, 'Hierárquico', FALSE),
(21, 'Objeto', TRUE),
(21, 'Rede', FALSE),
(21, 'Flat file', FALSE),
(21, 'Nenhuma das alternativas anteriores', FALSE);

/*A Partir de agora AS questoes dependem da imagem 
 * 
 * \textbf{ATENÇÃO}: as perguntas 19 até 23 são referentes ao banco de dados
ilustrado no diagrama relacional na Figura~\ref{fig:lojas-uvv}, abaixo:
\begin{figure}[H]
  \centering
  \caption{Banco de dados das Lojas UVV}
  \label{fig:lojas-uvv}
  %\fbox{
    \includegraphics[scale=2]{imagens/oracle-co.png}
  %}\\
  %\footnotesize{Fonte: xxxx.}
\end{figure}
*/

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
Qual é o tipo de relacionamento existente entre as tabelas ``lojas'' e
``produtos''?' );

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(22, 'É um relacionamento 1:1, ou seja, cada loja é responsável por vender um tipo de produto.', FALSE),
(22, 'É um relacionamento 1:N identificado, ou seja: uma loja pode vender diversos produtos, e os produtos não existem fora da loja.', FALSE),
(22, 'É um relacionamento 1:N não identificado, ou seja: uma loja pode vender diversos produtos, e os produtos existem fora da loja.', FALSE),
(22, 'Não existe relacionamento entre as tabelas ``lojas'' e ``produtos'', não há nenhuma linha ligando essas tabelas diretamente.', FALSE),
(22, 'É um relacionamento N:N não identificado, através da tabela ``estoques''.', TRUE);

/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
( 'O', '\question
Seu chefe solicitou que você preparasse um relatório que mostrasse o estoque de
produtos atual de cada loja. Você preparou o seguinte relatório:
\begin{tcolorbox}
\begin{verbatim}1     SELECT l.nome AS loja
2          , p.produto AS produto
3          , e.quantidade AS quantidade
4     FROM lojas l
5     INNER JOIN estoques e ON (e.loja_id = l.loja_id)
6     INNER JOIN produtos p ON (e.produto_id = p.produto_id)
7     ORDER BY loja, produto;
\end{verbatim}');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(23, 'Linha 7', FALSE),
(23, 'Linha 6', FALSE),
(23, 'Linha 5', FALSE),
(23, 'Linha 2', TRUE),
(23, 'Linha 1', FALSE);
*/

/*
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
O que o relatório abaixo vai produzir?
\begin{tcolorbox}
 \begin{verbatim}1  SELECT c.nome
 2       , SUM(pi.preco_unitario * pi.quantidade)
 3  FROM clientes c
 4  INNER JOIN pedidos p ON (p.cliente_id = c.cliente_id)
 5  INNER JOIN pedidos_itens pi ON (pi.pedido_id = p.pedido_id)
 6  GROUP BY c.nome
 7  ORDER BY SUM(pi.preco_unitario * pi.quantidade) DESC;
 \end{verbatim}
\end{tcolorbox}
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(39, 'A soma de todas as compras que os clientes já fizeram na loja, começando pelos melhores clientes (os que compram mais)', TRUE),
(39, 'A soma da quantidade de todos os produtos que os clientes já compraram na loja, começando pelos melhores clientes (os que compram mais)', FALSE),
(39, 'Nada, pois há um erro na linha 7', FALSE),
(39, 'Nada, pois há um erro na linha 5', FALSE),
(39, 'Nenhuma das respostas anteriores', FALSE);
*/

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
O que o indicar ``PFK'', na tabela ``pedidos\_itens'' nos informa?');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(23, 'Que essa tabela tem duas chaves primárias: uma é a ``pedido_id'' e a outra é a ``produto_id''. Como são duas chaves primárias, os relacionamentos são exibidos com uma linha cheia ao invés de pontilhada.', FALSE),
(23, 'Que essa tabela faz um relacionamento identificado com outras duas tabelas, ``produtos'' e ``pedidos'', pois as chaves estrangeiras fazem parte também da chave primária.', TRUE),
(23, 'Que essa tabela só tem duas chaves estrangeiras e, também, que as colunas dessas chaves estrangeiras fazem parte da chave primária.', FALSE),
(23, 'Que a chave estrangeira dessa tabela é composta, ou seja, é a combinação das duas chaves estrangeiras componentes.', FALSE),
(23, 'Nenhuma das alternativas acima.', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
O preço que um produto fica, atualmente, cadastrado na tabela
``produtos''. Verifique esse tabela: o preço máximo que um produto pode ter é de
R\$ 9.999.999.999,99.
');


INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(24, 'Impossível determinar', FALSE),
(24, 'Verdadeiro', FALSE),
(24, 'Falso', TRUE);

/* Imagem
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Ao analisar melhor o diagrama do banco de dados (Figura~\ref{fig:lojas-uvv}),
você percebe dois erros comuns nas tabelas ``clientes'' e ``lojas''. Assinale a
alternativa que indica corretamente quais são esses erros:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(25, 'Ambas as tabelas utilizam atributos compostos.', FALSE),
(25, 'Ambas as tabelas utilizam atributos multivalorados.', FALSE),
(25, 'O uso de atributos compostos na tabela ``clientes'' e de atributos multivalorados na tabela ``lojas''.', FALSE),
(25, 'O uso de atributos multivalorados na tabela ``clientes'' e de atributos compostos na tabela ``lojas''.', TRUE),
(25, 'Nenhuma das alternativas anteriores.', FALSE);
*/

/* Verbatim
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Seu chefe que fazer uma campanha de venda para produtos que custam entre 20 e 30
reais, mas está preocupado porque ouviu de um dos vendedores que diversos
produtos nessa faixa de preço estão com o estoque zerado. Para verificar a
situação seu chefe pediu para que você prepare um relatório que mostre os
produtos que custam entre 20 e 30 reais e que estão com o estoque zerado. Você
preparou o seguinte relatório para seu chefe:
\begin{tcolorbox}
 \begin{verbatim}1  SELECT l.nome AS loja
2       , p.nome AS produto
3       , p.preco_unitario AS preco
4       , e.quantidade AS qtd
5  FROM produtos p
6  INNER JOIN estoques e ON (e.produto_id = p.produto_id)
7  INNER JOIN lojas l ON (e.loja_id = l.loja_id)
8  WHERE (p.preco_unitario >= 20 OR p.preco_unitario <= 30)
9    AND e.quantidade = 0
10 ORDER BY loja, produto;
 \end{verbatim}
\end{tcolorbox}
O seu relatório:');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(25, 'Está errado pois vai trazer também produtos fora da faixa de preço que o seu chefe quer.', TRUE),
(25, 'Está correto e trará exatamente, os produtos com o estoque zerado e na faixa de preço requisitada pelo seu chefe. Além disso ordena o resultado pelo nome da loja e pelo nome do produto.', FALSE),
(25, 'Está errado pois há um erro de sintaxe nas linhas 6 e 7.', FALSE),
(25, 'Está errado pois a tabela que deveria estar na cláusula FROM é a tabela ``lojas'', não a tabela ``produtos''.', FALSE),
(25, 'Nenhuma das alternativas anteriores.', FALSE);
*/
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
A coluna ``loja\_id'' na tabela ``estoques'' é uma chave estrangeira para qual
tabela?
');
INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(25, 'envios', FALSE),
(25, 'lojas', TRUE),
(25, 'pedidos', FALSE),
(25, 'produtos', FALSE),
(25, 'clientes', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Qual o relacionamento existente entre as tabelas ``pedidos'' e ``produtos''?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(26, '1:N', FALSE),
(26, 'N:1', FALSE),
(26, 'N:N', TRUE),
(26, '0:N', FALSE),
(26, 'N:0', FALSE);

/* Verbatim
INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', 'question
Ao executar o seguinte comando SQL, nenhum dado foi retornado, ou seja, não
ocorreu nenhum erro de sintaxe mas nenhum dado foi encontrado:
\begin{tcolorbox}
 \begin{verbatim}1   SELECT c.nome AS cliente
 2   FROM clientes c
 3   LEFT JOIN pedidos p ON (p.cliente_id = c.cliente_id)
 4   WHERE p.cliente_id IS NULL
 5   ORDER BY cliente;
 \end{verbatim}
\end{tcolorbox}
Por que esse comando SQL não retornou nenhum dado?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(44, 'Há um erro semântico na linha 3.', FALSE),
(44, 'Há um erro lógico na linha 4.', FALSE),
(44, 'A junção que deveria ter sido realizada, na linha 3, era uma RIGHT JOIN ao invés de uma LEFT JOIN.', FALSE),
(44, 'A junção que deveria ter sido realizada, na linha 3, era uma FULL JOIN ao invés de uma RIGHT JOIN.', FALSE),
(44, 'Todos os clientes cadastrados fizeram, pelo menos, um pedido de compra.', TRUE);
*/

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Que cláusula da SQL é fortemente relacionada com a lógica matemática?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(27, 'INNER JOIN', FALSE),
(27, 'FROM', FALSE),
(27, 'SELECT', FALSE),
(27, 'ORDER BY', FALSE),
(27, 'WHERE', TRUE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Assinale a alternativa que contém a ordem correta das cláusulas SQL:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(28, 'SELECT, FROM, WHERE, JOIN, HAVING, GROUP BY, ORDER BY', FALSE),
(28, 'SELECT, FROM, WHERE, GROUP BY, JOIN, HAVING, ORDER BY', FALSE),
(28, 'SELECT, FROM, JOIN, WHERE, GROUP BY, ORDER BY, HAVING', FALSE),
(28, 'SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING, ORDER BY', TRUE),
(28, 'Nenhuma das alternativas acima', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question Assinale a alternativa \textbf{incorreta}:
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(29, 'O modelo relacional de dados foi criado por Edgar Frank Cood', FALSE),
(29, 'Modelo de dados é a mesma coisa que o diagrama relacional', TRUE),
(29, 'No modelo relacional, tudo o que o usuário percebe são tabelas', FALSE),
(29, 'Um SGBD não tem interface gráfica', FALSE),
(29, 'O MariaDB é um SGBD', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Na linguagem SQL, qual das seguintes palavras-chave é usada para modificar os
dados em uma tabela existente?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(30, 'SELECT', FALSE),
(30, 'CREATE', FALSE),
(30, 'UPDATE', TRUE),
(30, 'INSERT', FALSE),
(30, 'Nenhuma das alternativas acima', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Qual das seguintes opções \textbf{não é} uma vantagem do uso de um banco de
dados sobre o sistema de arquivos convencional?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(31, 'Independência de dados', FALSE),
(31, 'Eficiência', FALSE),
(31, 'Controle de redundância e inconsistência', FALSE),
(31, 'Estruturação de dados', TRUE),
(31, 'Controle de acesso e visualização de dados', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Em um banco de dados relacional, o que é uma chave primária?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(32, 'É um atributo (ou um conjunto de atributos) que permite identificar única e exclusivamente cada registro da tabela', TRUE),
(32, 'É denominada por FK', FALSE),
(32, 'É uma validação que evita o cadastro de dados errados', FALSE),
(32, 'É qualquer coluna ou conjunto de colunas que podem servir como índice', FALSE),
(32, 'Nenhuma das respostas acima', FALSE);

INSERT INTO questoes (tipo_questao, enunciado) VALUES 
('O', '\question
Em SQL, qual comando é utilizado para combinar linhas de duas ou mais tabelas?
');

INSERT INTO alternativas (cod_questao, enunciado, correta) VALUES 
(33, 'COMBINE', FALSE),
(33, 'JOIN', TRUE),
(33, 'MERGE', FALSE),
(33, 'LINK', FALSE),
(33, 'CONNECT', FALSE);

