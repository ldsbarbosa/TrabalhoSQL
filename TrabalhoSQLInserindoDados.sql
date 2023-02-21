/* Fontes:
Top Gun: Maverick (2022): https://www.imdb.com/title/tt1745960/
Bob's Burgers: O Filme (2022): https://www.imdb.com/title/tt7466442/
Pinocchio (2022): https://www.imdb.com/title/tt4593060/?ref_=vp_vi_tt
Emergência (2022): https://www.imdb.com/title/tt13650600/
Crimes do Futuro (2022): https://www.imdb.com/title/tt14549466/
Arremessando Alto (2022): https://www.imdb.com/title/tt8009428/
Jurassic World Domínio (2022): https://www.imdb.com/title/tt8041270/
Jennifer Lopez: Halftime (2022): https://www.imdb.com/title/tt19637852/
Lightyear (2022): https://www.imdb.com/title/tt10298810/
*/
/* Inserindo um cinema! */
INSERT INTO sistemacinemark.cinema
(nomeCinema, cidadeCinema, estadoCinema)
VALUES ('CinemaMAX','Porto Alegre','Santa Catarina');
INSERT INTO sistemacinemark.cinema
(nomeCinema, cidadeCinema, estadoCinema)
VALUES ('Kinoplex','Natal','Rio Grande do Norte');
INSERT INTO sistemacinemark.cinema
(nomeCinema, cidadeCinema, estadoCinema)
VALUES ('SuperCine','Manaus','Amazonas');
select * from cinema;

/* Inserindo as salas do cinema! */
INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema1A', '2D', 1);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema1B', '2D', 1);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema1C', '2D', 1);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema2A', '3D', 1);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema2B', '3D', 1);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema3A', 'IMAX', 1);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema3B', 'IMAX', 1);
select * from sala;

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema1A', '2D', 2);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema2A', '3D', 2);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema3A', 'IMAX', 2);

INSERT INTO sistemacinemark.sala
(nomeSala, tipoSala, cinema_idCinema)
VALUES
('SalaDeCinema3A', 'IMAX', 3);
select * from sala;

/* Inserindo alguns filmes! */

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi632472089/?playlistId=tt1745960&ref_=tt_pr_ov_vi',
'Após mais de trinta anos de serviço como um dos melhores aviadores da Marinha, Pete Mitchell está onde pertence, ultrapassando os limites
 como um piloto de teste intrépido e evitando a promoção de posto que o manteria em terra.',
'Top Gun: Maverick', 'Joseph Kosinski', 'Jim Cash');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi2646131225/?playlistId=tt7466442&ref_=tt_ov_vi',
'A família Belcher tenta salvar o restaurante, depois que uma cratera se abre em frente dele,
 e as crianças Belcher tentam resolver um mistério para salvar o restaurante da família.',
"Bob's Burgers: O Filme", 'Loren Bouchard', 'Nora Smith');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi1941160473/?playlistId=tt5113044&ref_=tt_ov_vi',
'A história não contada do sonho de uma criança de doze anos de se tornar o maior supervilão do mundo.',
'Minions 2: A Origem de Gru', 'Kyle Balda', 'Brian Lynch');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi3801858585/?playlistId=tt13650600&ref_=tt_ov_vi',
'Preparados para uma noite de festa lendária, três estudantes universitários devem
 pesar os prós e os contras de chamar a polícia quando confrontados com uma situação inesperada.',
'Emergência', 'Carey Williams', 'K.D. Dávila');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi4103324185/?playlistId=tt14549466&ref_=tt_pr_ov_vi',
'Os humanos se adaptam a um ambiente sintético, com novas transformações e mutações.
 Com a ajuda de Caprice, Saul Tenser, artista performático de celebridades, mostra publicamente a metamorfose de seus órgãos em atuações de vanguarda.',
'Crimes do Futuro', 'David Cronenberg', 'David Cronenberg');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi1032176153/?playlistId=tt8009428&ref_=tt_ov_vi',
'Um caçador de talentos do basquete descobre um fenomenal jogador de rua enquanto está na Espanha e vê essa perspectiva como sua chance de voltar à NBA.',
'Arremessando Alto', 'Jeremiah Zagar', 'Will Fetters');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi764854809/?playlistId=tt8041270&ref_=tt_pr_ov_vi',
'Quatro anos após a destruição da Ilha Nublar, os dinossauros coexistem com os humanos.
 Esse equilíbrio determinará se os humanos continuarão sendo os predadores dominantes em um mundo com as criaturas mais temíveis de todos os tempos.',
'Jurassic World Domínio', 'Colin Trevorrow', 'Emily Carmichael');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi3086991897/?playlistId=tt19637852&ref_=tt_ov_vi',
'Um olhar íntimo sobre Jennifer Lopez enquanto ela reflete sobre suas metas e sua evolução como artista,
 e navega na segunda metade de sua carreira continuando a entreter, capacitar e inspirar.',
'Jennifer Lopez: Halftime', 'Amanda Micheli', 'Amanda Micheli');

INSERT INTO sistemacinemark.filme
(trailerFilme, sinopseFilme, tituloFilme, direcaoFilme, roteiristaFilme)
VALUES
('https://www.imdb.com/video/vi1034797593/?playlistId=tt10298810&ref_=tt_ov_vi',
'A história de Buzz Lightyear e suas aventuras ao infinito e além.',
'Lightyear', 'Angus MacLane', 'Jason Headley');
select * from filme;

/* Inserindo alguns atores */
INSERT INTO sistemacinemark.ator /* Atores de Top Gun */
(nomeAtor)
VALUES
('Tom Cruise');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Jennifer Connelly');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Miles Teller');

INSERT INTO sistemacinemark.ator /* Atores de Bob's Burgers: O Filme */
(nomeAtor)
VALUES
('H. Jon Benjamin');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Kristen Schall');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Dan Mintz');

INSERT INTO sistemacinemark.ator /* Atores de Minions 2: A Origem de Gru */
(nomeAtor)
VALUES
('Steve Carell');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Taraji P. Henson');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Jean-Claude Van Damme');

INSERT INTO sistemacinemark.ator /* Atores de Emergência */
(nomeAtor)
VALUES
('RJ Cyler');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Donald Elise Watkins');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Sebastian Chacon');

INSERT INTO sistemacinemark.ator /* Atores de Crimes do Futuro */
(nomeAtor)
VALUES
('Léa Seydoux');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Kristen Stewart');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Viggo Mortensen');

INSERT INTO sistemacinemark.ator /* Atores de Arremessando Alto*/
(nomeAtor)
VALUES
('Adam Sandler');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Ben Foster');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Robert Duvall');

INSERT INTO sistemacinemark.ator /* Atores de Jurassic World Domínio */
(nomeAtor)
VALUES
('Chris Pratt');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Bryce Dallas Howard');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Laura Dern');

INSERT INTO sistemacinemark.ator /* Atores de Jennifer Lopez: Halftime */
(nomeAtor)
VALUES
('Jennifer Lopez');

INSERT INTO sistemacinemark.ator /* Atores de Lightyear */
(nomeAtor)
VALUES
('Chris Evans');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Keke Palmer');

INSERT INTO sistemacinemark.ator
(nomeAtor)
VALUES
('Dale Soules');
select * from ator;

/* Inserindo o elenco do filme - Relacionamento M:N de Ator e Filme*/
INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Tom Cruise - Top Gun: Maverick */
VALUES
( 1, 1, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Jennifer Connely - Top Gun: Maverick */
VALUES
( 1, 2, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Miles Teller - Top Gun: Maverick */
VALUES
( 1, 3, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* H. Jon Benjamin - Bob's Burguers: O Filme */
VALUES
( 2, 4, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Kristen Schaal - Bob's Burgers: O Filme */
VALUES
( 2, 5, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Dan Mintz - Bob's Burguers: O Filme */
VALUES
( 2, 6, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Tom Hanks - Minions 2: A Origem de Gru */
VALUES
( 3, 7, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Lorraine Bracco - Minions 2: A Origem de Gru */
VALUES
( 3, 8, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Joseph Gordon-Levitt - Minions 2: A Origem de Gru */
VALUES
( 3, 9, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* RJ Cyler - Emergência */
VALUES
( 4, 10, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Donal Elise Watkins - Emergência */
VALUES
( 4, 11, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Sebastian Chacon - Emergência */
VALUES
( 4, 12, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Léa Seydoux - Crimes do Futuro */
VALUES
( 5, 13, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Kristen Stewart - Crimes do Futuro */
VALUES
( 5, 14, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Viggo Mortensen - Crimes do Futuro */
VALUES
( 5, 15, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Adam Sandler - Arremessando Alto */
VALUES
( 6, 16, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Ben Foster - Arremessando Alto */
VALUES
( 6, 17, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Robert Duvall - Arremessando Alto */
VALUES
( 6, 18, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Chris Pratt - Jurassic World Domínio */
VALUES
( 7, 19, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Bryce Dallas Howard - Jurassic World Domínio */
VALUES
( 7, 20, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Laura Dern- Jurassic World Domínio */
VALUES
( 7, 21, 2022);
INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Jennifer Lopez - Jennifer Lopez: Halftime */
VALUES
( 8, 22, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Chris Evans - Lightyear */
VALUES
( 9, 23, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Keke Palmer - Lightyear */
VALUES
( 9, 24, 2022);

INSERT INTO sistemacinemark.elenco
(filme_idfilme, atores_idAtores, anoParticipacao)/* Dale Soules - Lightyear */
VALUES
( 9, 25, 2022);

select * from elenco;

/* Inserindo uma lista de gêneros na tabela de genero*/
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Ação');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Animação');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Aventura');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Comédia');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Documentário');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Drama');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Esportes');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Ficção Científica');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Suspense');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Terror');
INSERT INTO sistemacinemark.genero /* Generos que não estão em nenhum filme segundo o IMDB*/
(nomeGenero)
VALUES
('Comédia Romantica');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Fantasia');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Romance');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Guerra');
INSERT INTO sistemacinemark.genero
(nomeGenero)
VALUES
('Mistério');
SELECT * FROM genero;

/* Inserindo a categoria do filme (Associando generos a cada filme) - Relacionamento M:N entre Filme e Gênero*/
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Ação - Top Gun: Maverick */
VALUES
(1, 1, '2022-05-26');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Drama - Top Gun: Maverick */
VALUES
(6, 1, '2022-05-26');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Animação - Bob's Burgers: O Filme */
VALUES
(2, 2, '2022-05-27');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Aventura - Bob's Burgers: O Filme */
VALUES
(3, 2, '2022-05-27');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Comédia - Bob's Burgers: O Filme */
VALUES
(4, 2, '2022-05-27');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Animação - Minions 2: A Origem de Gru */
VALUES
(2, 3, '2022-09-08');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Comédia - Minions 2: A Origem de Gru */
VALUES
(4, 3, '2022-09-08');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Aventura - Minions 2: A Origem de Gru */
VALUES
(3, 3, '2022-09-08');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Drama - Emergência */
VALUES
(6, 4, '2022-05-20');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Comédia - Emergência */
VALUES
(4, 4, '2022-05-20');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Suspense - Emergência */
VALUES
(9, 4, '2022-05-20');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Drama - Crimes do Futuro */
VALUES
(6, 5, '2022-05-25');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Terror - Crimes do Futuro */
VALUES
(10, 5, '2022-05-25');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Ficção Científica - Crimes do Futuro */
VALUES
(8, 5, '2022-05-25');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Drama - Arremessando Alto */
VALUES
(6, 6, '2022-05-09');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Comédia - Arremessando Alto */
VALUES
(4, 6, '2022-05-09');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Esportes - Arremessando Alto */
VALUES
(7, 6, '2022-05-09');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Ação - Jurassic World Domínio */
VALUES
(1, 7, '2022-06-10');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Aventura - Jurassic World Domínio */
VALUES
(3, 7, '2022-06-10');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Ficção Científica - Jurassic World Domínio */
VALUES
(8, 7, '2022-06-10');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Documentáro - Jennifer Lopez: Halftime */
VALUES
(7, 8, '2022-06-14');

INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Ação - Lightyear */
VALUES
(1, 9, '2022-05-25');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Aventura - Lightyear */
VALUES
(3, 9, '2022-05-25');
INSERT INTO sistemacinemark.categoriafilme
(genero_idGenero, filme_idFilme, dataLancamentoFilme)/* Animação - Lightyear */
VALUES
(2, 9, '2022-05-25');

select * from categoriafilme;

/* Inserindo três clientes */
INSERT INTO sistemacinemark.cliente
(nomeCliente, sexoCliente, senhaCliente, cpfCliente, dataNascCliente)
VALUES
('Geraldo', 'Homem', '123456', '70707822092', '2000-03-20');

INSERT INTO sistemacinemark.cliente
(nomeCliente, sexoCliente, senhaCliente, cpfCliente, dataNascCliente)
VALUES
('Kelly', 'Mulher', 'ABCDEF', '92523796066', '1993-04-17');

INSERT INTO sistemacinemark.cliente
(nomeCliente, sexoCliente, senhaCliente, cpfCliente, dataNascCliente)
VALUES
('Beatriz', 'Mulher', 'ZDEDEF123', '20095941002', '1989-10-03');
select * from cliente;

/* Inserindo e-mail do cliente */
INSERT INTO sistemacinemark.email
(cliente_idCliente, emailCliente)
VALUES(1,
'geraldo@gmail.com');
INSERT INTO sistemacinemark.email
(cliente_idCliente, emailCliente)
VALUES(1,
'geraldo3000@outlook.com');
INSERT INTO sistemacinemark.email
(cliente_idCliente, emailCliente)
VALUES(2,
'kelly324@gmail.com');
INSERT INTO sistemacinemark.email
(cliente_idCliente, emailCliente)
VALUES(2,
'kellySamba@hotmail.com');
INSERT INTO sistemacinemark.email
(cliente_idCliente, emailCliente)
VALUES(3,
'beatrizinha@hotmail.com');
INSERT INTO sistemacinemark.email
(cliente_idCliente, emailCliente)
VALUES(3,
'beatriz239@outlook.com');
select * from email;

/* Inserindo telefone do cliente */
INSERT INTO sistemacinemark.telefone
(cliente_idCliente, numeroTelefone)
VALUES(1,
'971187207');
INSERT INTO sistemacinemark.telefone
(cliente_idCliente, numeroTelefone)
VALUES(1,
'976201363');
INSERT INTO sistemacinemark.telefone
(cliente_idCliente, numeroTelefone)
VALUES(2,
'999062431');
INSERT INTO sistemacinemark.telefone
(cliente_idCliente, numeroTelefone)
VALUES(2,
'988797837');
select * from telefone;
INSERT INTO sistemacinemark.telefone
(cliente_idCliente, numeroTelefone)
VALUES(2,
'983752172');
select * from telefone;
INSERT INTO sistemacinemark.telefone
(cliente_idCliente, numeroTelefone)
VALUES(3,
'98751279');
select * from telefone;

/* Inserindo algumas sessões */
INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 1','Sim',1,1);
INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 2','Não',1,4);
INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 3','Sim',1,6);

INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 4','Não',2,4);
INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 5','Não',2,6);

INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 6','Sim',3,1);
INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 7','Não',3,4);
INSERT INTO sistemacinemark.sessao
(nomeSessao,filmeLegendado,filme_idFilme,sala_idSala)
VALUES
('Sessão 8','Não',3,6);

select * from sessao;

/* Inserindo o publico - Relacionamento m:n de cliente e sessão*/
INSERT INTO sistemacinemark.publico /* Geraldo vai ir ver Top Gun: Maverick à tarde!*/
(sessao_idSessao,
sessao_filme_idfilme,
sessao_sala_idSala,
cliente_idCliente,
horarioInicio,
horarioFim)
VALUES
(3,1,6,1,'14:30:00','16:40:00');
INSERT INTO sistemacinemark.publico /* Kelly também vai ir ver Top Gun: Maverick à tarde, na mesma sessão que o Geraldo!*/
(sessao_idSessao,
sessao_filme_idfilme,
sessao_sala_idSala,
cliente_idCliente,
horarioInicio,
horarioFim)
VALUES
(3,1,6,2,'14:30:00','16:40:00');
INSERT INTO sistemacinemark.publico /* Coincidentemente, Beatriz também vai ir ver Top Gun: Maverick à tarde, porém em uma sessão diferente da sessão do Geraldo e da Kelly!*/
(sessao_idSessao,
sessao_filme_idfilme,
sessao_sala_idSala,
cliente_idCliente,
horarioInicio,
horarioFim)
VALUES
(2,1,4,3,'14:40:00','16:50:00');

INSERT INTO sistemacinemark.publico /* Pela noite, Geraldo vai ir ver Bob's Burgers: O Filme.*/
(sessao_idSessao,
sessao_filme_idfilme,
sessao_sala_idSala,
cliente_idCliente,
horarioInicio,
horarioFim)
VALUES
(4,1,6,1,'19:50:00','21:32:00');
INSERT INTO sistemacinemark.publico /* Pela noite, Beatriz vai ir ver Minions 2: A Origem de Gru.*/
(sessao_idSessao,
sessao_filme_idfilme,
sessao_sala_idSala,
cliente_idCliente,
horarioInicio,
horarioFim)
VALUES
(8,3,6,3,'19:15:00','20:45:00');

INSERT INTO sistemacinemark.publico /* Pela manhã no dia seguinte, Kelly verá Bob's Burgers: O Filme.*/
(sessao_idSessao,
sessao_filme_idfilme,
sessao_sala_idSala,
cliente_idCliente,
horarioInicio,
horarioFim)
VALUES
(5,2,6,2,'08:20:00','10:10:00');

/* Inserindo a compra do cliente*/
INSERT INTO sistemacinemark.compra /* Geraldo pagou o preco do ingresso de Top Gun! */
(precoCompra,dataCompra,
cliente_idCliente,sessao_idSessao)
VALUES
(43.2,'2022-06-01',
1,3);
INSERT INTO sistemacinemark.compra /* Como Kelly atendeu a mesma sessão, pagou o mesmo preço */
(precoCompra,dataCompra,
cliente_idCliente,sessao_idSessao)
VALUES
(43.2,'2022-06-01',
2,3);
INSERT INTO sistemacinemark.compra /* Beatriz também! */
(precoCompra,dataCompra,
cliente_idCliente,sessao_idSessao)
VALUES
(43.2,'2022-06-01',
3,3);
INSERT INTO sistemacinemark.compra /* Pela noite, Geraldo pagou o preco do ingresso de Bob's Burger: O Filme! */
(precoCompra,dataCompra,
cliente_idCliente,sessao_idSessao)
VALUES
(39.7,'2022-06-01',
1,4);
INSERT INTO sistemacinemark.compra /* Pela noite, Beatriz pagou o preco do ingresso de Minions 2: A Origem de Gru! */
(precoCompra,dataCompra,
cliente_idCliente,sessao_idSessao)
VALUES
(50.1,'2022-06-01',
3,8);
INSERT INTO sistemacinemark.compra /* Na manhã seguinte, Kelly pagou o preco do ingresso de Bob's Burger: O Filme! */
(precoCompra,dataCompra,
cliente_idCliente,sessao_idSessao)
VALUES
(47.5,'2022-06-02',
2,5);
select * from compra;