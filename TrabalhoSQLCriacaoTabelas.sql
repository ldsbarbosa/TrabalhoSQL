CREATE DATABASE sistemaCinemark; /* Criação do Banco de Dados */
USE sistemaCinemark; /* Usando o Banco de Dados */
/* Em caso de necessidade de refazer o Banco de Dados: DROP DATABASE sistemaCinemark; */

CREATE TABLE sistemaCinemark.cinema ( /* Criando a entidade cinema */
  idCinema INT NOT NULL AUTO_INCREMENT,
  nomeCinema VARCHAR(255) NOT NULL,
  cidadeCinema VARCHAR(255) NOT NULL,
  estadoCinema VARCHAR(255) NOT NULL,
  PRIMARY KEY (idCinema));
  
CREATE TABLE sistemaCinemark.sala ( /* Criando a entidade sala */
  idSala INT NOT NULL AUTO_INCREMENT,
  nomeSala VARCHAR(255) NOT NULL,
  tipoSala VARCHAR(45) NOT NULL,
  cinema_idCinema INT NOT NULL,
  PRIMARY KEY (idSala),
  FOREIGN KEY (cinema_idCinema)
  REFERENCES sistemaCinemark.cinema (idCinema));

CREATE TABLE sistemaCinemark.filme ( /* Criando a entidade filme */
  idFilme INT NOT NULL AUTO_INCREMENT,
  trailerFilme VARCHAR(255) NOT NULL,
  sinopseFilme VARCHAR(255) NOT NULL,
  tituloFilme VARCHAR(255) NOT NULL,
  direcaoFilme VARCHAR(255) NOT NULL,
  roteiristaFilme VARCHAR(255) NOT NULL,
  PRIMARY KEY (idFilme)
  );
  
CREATE TABLE sistemaCinemark.ator ( /* Criando a entidade ator */
  idAtor INT NOT NULL AUTO_INCREMENT,
  nomeAtor VARCHAR(255) NOT NULL,
  PRIMARY KEY (idAtor));

CREATE TABLE sistemaCinemark.elenco ( /* Criando a entidade participacao, que é ator e filme m para n */
 idElenco INT NOT NULL AUTO_INCREMENT ,
 filme_idfilme INT NOT NULL,
 atores_idAtores INT NOT NULL,
 anoParticipacao INT NOT NULL,
 PRIMARY KEY (idElenco),
 FOREIGN KEY (filme_idfilme) REFERENCES sistemaCinemark.filme(idFilme),
 FOREIGN KEY (atores_idAtores) REFERENCES sistemaCinemark.ator(idAtor));

CREATE TABLE sistemaCinemark.genero ( /* Criando a entidade genero */
  idGenero INT NOT NULL AUTO_INCREMENT,
  nomeGenero VARCHAR(45) NOT NULL,
  PRIMARY KEY (idGenero));
  
CREATE TABLE sistemaCinemark.categoriaFilme ( /* Criando a entidade categoriaFilme */
  idCategoriaFilme INT NOT NULL AUTO_INCREMENT,
  genero_idGenero INT NOT NULL,
  filme_idFilme INT NOT NULL,
  dataLancamentoFilme DATE NOT NULL,
  PRIMARY KEY (idCategoriaFilme),
    FOREIGN KEY (genero_idGenero)
    REFERENCES sistemaCinemark.genero (idGenero),
    FOREIGN KEY (filme_idFilme)
    REFERENCES sistemaCinemark.filme (idFilme));

CREATE TABLE sistemaCinemark.sessao ( /* Criando a entidade sessao */
  idSessao INT NOT NULL AUTO_INCREMENT,
  nomeSessao VARCHAR(255) NOT NULL,
  filmeLegendado VARCHAR(10) NOT NULL,
  filme_idFilme INT NOT NULL,
  sala_idSala INT NOT NULL,
  PRIMARY KEY (idSessao),
  FOREIGN KEY (filme_idFilme) REFERENCES sistemaCinemark.filme (idFilme),
  FOREIGN KEY (sala_idSala) REFERENCES sistemaCinemark.sala (idSala));

CREATE TABLE sistemaCinemark.cliente ( /* Criando a entidade cliente */
  idCliente INT NOT NULL AUTO_INCREMENT,
  nomeCliente VARCHAR(255) NOT NULL,
  sexoCliente VARCHAR(10) NOT NULL,
  senhaCliente VARCHAR(50) NOT NULL,
  cpfCliente VARCHAR(14) NOT NULL,
  dataNascCliente DATE NOT NULL,
  PRIMARY KEY (idCliente));

CREATE TABLE sistemaCinemark.email ( /* Criando a entidade email */
  idEmail INT NOT NULL AUTO_INCREMENT,
  cliente_idCliente INT NOT NULL,
  emailCliente VARCHAR(60) NOT NULL,
  PRIMARY KEY (idEmail),
    FOREIGN KEY (cliente_idCliente)
    REFERENCES sistemaCinemark.cliente (idCliente));

CREATE TABLE sistemaCinemark.telefone ( /* Criando a entidade telefone */
  idTelefone INT NOT NULL AUTO_INCREMENT,
  cliente_idCliente INT NOT NULL,
  numeroTelefone VARCHAR(20) NOT NULL,
  PRIMARY KEY (idTelefone),
    FOREIGN KEY (cliente_idCliente)
    REFERENCES sistemaCinemark.cliente (idCliente));
    
CREATE TABLE sistemaCinemark.compra ( /* Criando a entidade compra */
  idCompra INT NOT NULL AUTO_INCREMENT,
  precoCompra FLOAT NOT NULL,
  dataCompra DATE NOT NULL,
  cliente_idCliente INT NOT NULL,
  sessao_idSessao INT NOT NULL,
  PRIMARY KEY (idCompra),
    FOREIGN KEY (cliente_idCliente)
    REFERENCES sistemaCinemark.cliente (idCliente),
    FOREIGN KEY (sessao_idSessao)
    REFERENCES sistemaCinemark.sessao (idSessao));

CREATE TABLE sistemaCinemark.publico (
  idPublico INT NOT NULL AUTO_INCREMENT,
  sessao_idSessao INT NOT NULL,
  sessao_filme_idfilme INT NOT NULL,
  sessao_sala_idSala INT NOT NULL,
  cliente_idCliente INT NOT NULL,
  horarioInicio TIME NOT NULL,
  horarioFim TIME NOT NULL,
  PRIMARY KEY (idPublico),
    FOREIGN KEY (sessao_idSessao)
    REFERENCES sistemaCinemark.sessao (idSessao),
    FOREIGN KEY (cliente_idCliente)
    REFERENCES sistemaCinemark.cliente (idCliente));
