/* Selects gerais */
SELECT * FROM sistemacinemark.cinema;
SELECT * FROM sistemacinemark.sala;
SELECT * FROM sistemacinemark.filme;
SELECT * FROM sistemacinemark.genero;
SELECT * FROM sistemacinemark.categoriafilme;
SELECT * FROM sistemacinemark.ator;
SELECT * FROM sistemacinemark.elenco;
SELECT * FROM sistemacinemark.cliente;
SELECT * FROM sistemacinemark.email;
SELECT * FROM sistemacinemark.telefone;
SELECT * FROM sistemacinemark.sessao;
SELECT * FROM sistemacinemark.compra;
SELECT * FROM sistemacinemark.publico;

/* Consultar com todos os dados da venda de um ingresso realizada (sala, atributo, filme, horário, ...).
Dados da venda de um ingresso realizada = Compra */

/* 1- Observando todas as compras */
SELECT idCompra as 'Identificador da compra',
    precoCompra  as 'Preco da compra',
    dataCompra as 'Data da compra',
    nomeCliente as 'Nome do cliente',
    nomeSessao as 'Nome da sessão',
    horarioInicio as 'Horario do inicio da sessão',
    horarioFim as 'Horário do fim da sessão'
FROM (((compra 
INNER JOIN cliente ON compra.cliente_idCliente = cliente.idCliente)
INNER JOIN sessao ON compra.sessao_idSessao = sessao.idSessao)
INNER JOIN publico ON compra.sessao_idSessao = publico.sessao_idSessao);


/* PRECO DA COMPRA DO INGRESSO */
/* 3- Observando a média de gasto considerando o nome dos clientes*/
SELECT nomeCliente as 'Nome do Consumidor', cpfCliente as 'CPF', avg(precoCompra) as 'Media de Gasto' FROM compra INNER JOIN cliente ON cliente_idCliente = idCliente GROUP BY nomeCliente;
/* 4- Observando o total gasto considerando o nome dos clientes*/
SELECT nomeCliente as 'Nome do Consumidor', cpfCliente as 'CPF', sum(precoCompra) as 'Total Gasto' FROM compra INNER JOIN cliente ON cliente_idCliente = idCliente GROUP BY nomeCliente;
/* 5- Observando o mínimo gasto por cliente*/
SELECT nomeCliente as 'Nome do Consumidor', cpfCliente as 'CPF', min(precoCompra) as 'Media de Gasto' FROM compra INNER JOIN cliente ON cliente_idCliente = idCliente GROUP BY nomeCliente;
/* 6- Observando o máximo gasto por cliente*/
SELECT nomeCliente as 'Nome do Consumidor', cpfCliente as 'CPF', max(precoCompra) as 'Total Gasto' FROM compra INNER JOIN cliente ON cliente_idCliente = idCliente GROUP BY nomeCliente;

/* DATA DA COMPRA DO INGRESSO */
/* 7- Observando a data de compra considerando o nome dos clientes*/
SELECT nomeCliente as 'Nome do Consumidor', dataCompra as 'Data da Compra', horarioInicio as 'Horário de começo da sessao',horarioFim as 'Horário de fim da sessao' FROM ((compra INNER JOIN cliente ON cliente_idCliente = idCliente)INNER JOIN publico ON compra.sessao_idSessao = publico.sessao_idSessao);

/* SALA RELACIONADA AO INGRESSO */
/* 8- Observando a sala de relacionada à data, ao ID do cliente e ao preco*/
SELECT dataCompra as 'Data da Compra', precoCompra as 'Preço do Ingresso', compra.cliente_idCliente as 'Identificador do Cliente', nomeSala as 'Nome da Sala', tipoSala as 'Tipo da Sala' FROM ((compra
 INNER JOIN sessao ON compra.sessao_idSessao = sessao.idSessao)
 INNER JOIN sala ON sessao.sala_idSala = sala.idSala) ORDER BY compra.cliente_idCliente;
 
 /* SESSAO RELACIONADA AO INGRESSO */
/* 9- Observando a sessão de relacionada à data, ao ID do cliente e ao preco do ingresso. Além disso, olhando o filme relacionado á sessão em específico*/
SELECT dataCompra as 'Data da Compra', precoCompra as 'Preço do Ingresso', compra.cliente_idCliente as 'Identificador do Cliente', nomeSessao as 'Nome da Sessao', filmeLegendado as 'O filme é legendado?',
tituloFilme as 'Titulo do filme', trailerFilme as 'Trailer do filme', direcaoFilme as 'Diretor do filme', roteiristaFilme as 'Roteirista do Filme' FROM (((compra
 INNER JOIN sessao ON compra.sessao_idSessao = sessao.idSessao)
 INNER JOIN filme ON sessao.filme_idFilme = filme.idFilme)
 INNER JOIN publico ON compra.sessao_idSessao = publico.sessao_idSessao)
 ORDER BY filme.idFilme;
 
/* CLIENTE RELACIONADO AO INGRESSO*/
/* 10- Explorando os clientes detalhadament e*/
 SELECT nomeCliente as 'Nome do Cliente',
    sexoCliente as 'Sexo do Cliente',
    senhaCliente as 'Senha do Cliente',
    cpfCliente as 'CPF do Cliente',
    dataNascCliente as 'Data de Nascimento do Cliente'
FROM cliente;

/* 11- Observando o cliente de relacionada aos seus e-mail's*/
 SELECT DISTINCT cliente.nomeCliente as 'Nome do Cliente', emailCliente as 'Email do Cliente' FROM ((compra
 INNER JOIN cliente ON compra.cliente_idCliente = cliente.idCliente)
 INNER JOIN email ON compra.cliente_idCliente = email.cliente_idCliente)
 ORDER BY cliente.nomeCliente;
 
/* 11.1 - Quantos e-mails são hotmail? */
 SELECT DISTINCT cliente.nomeCliente as 'Nome do Cliente', emailCliente as 'Email do Cliente' FROM ((compra
 INNER JOIN cliente ON compra.cliente_idCliente = cliente.idCliente)
 INNER JOIN email ON compra.cliente_idCliente = email.cliente_idCliente)
 WHERE emailCliente LIKE '%hotmail%' ORDER BY cliente.nomeCliente;
 
/* 11.2 - Quantos e-mails são gmail? */
 SELECT DISTINCT cliente.nomeCliente as 'Nome do Cliente', emailCliente as 'Email do Cliente' FROM ((compra
 INNER JOIN cliente ON compra.cliente_idCliente = cliente.idCliente)
 INNER JOIN email ON compra.cliente_idCliente = email.cliente_idCliente)
 WHERE emailCliente LIKE '%gmail%' ORDER BY cliente.nomeCliente;
 
/* 11.3 - Quantos e-mails são outlook? */
 SELECT DISTINCT cliente.nomeCliente as 'Nome do Cliente', emailCliente as 'Email do Cliente' FROM ((compra
 INNER JOIN cliente ON compra.cliente_idCliente = cliente.idCliente)
 INNER JOIN email ON compra.cliente_idCliente = email.cliente_idCliente)
 WHERE emailCliente LIKE '%outlook%' ORDER BY cliente.nomeCliente;
 
/* 12- Observando o cliente de relacionada aos seus telefones*/
 SELECT DISTINCT cliente.nomeCliente as 'Nome do Cliente', numeroTelefone as 'Telefone do Cliente' FROM ((compra
 INNER JOIN cliente ON compra.cliente_idCliente = cliente.idCliente)
 INNER JOIN telefone ON compra.cliente_idCliente = telefone.cliente_idCliente)
 ORDER BY cliente.nomeCliente;
 
/* 12.1 - Contando quantos telefones cada cliente tem - A divisão por dois foi necessária por conta da contagem duplicada (Não sei por que vem duplicado) */
SELECT cliente.nomeCliente as 'Nome do Cliente', count(numeroTelefone) / 2 as 'Quantidade de Telefones' FROM ((compra
 INNER JOIN cliente ON compra.cliente_idCliente = cliente.idCliente)
 INNER JOIN telefone ON compra.cliente_idCliente = telefone.cliente_idCliente)
GROUP BY nomeCliente;

 /* ATORES RELACIONADOS AO INGRESSO */
/* 13- Observando os atores relacionados aos ingressos*/
SELECT DISTINCT compra.cliente_idCliente as 'Identificador do Cliente', dataCompra as 'Data da Compra', precoCompra as 'Preço do Ingresso', nomeSessao as 'Nome da Sessao', filmeLegendado as 'O filme é legendado?',
tituloFilme as 'Nome do Filme',nomeAtor as 'Nome do Ator' FROM ((((compra
 INNER JOIN sessao ON compra.sessao_idSessao = sessao.idSessao)
 INNER JOIN elenco ON sessao.filme_idFilme = elenco.filme_idFilme)
 INNER JOIN filme ON sessao.filme_idFilme = filme.idFilme)
 INNER JOIN ator ON elenco.atores_idAtores = ator.idAtor) /* Refatorar essa chave primária */
 WHERE nomeAtor LIKE 'T%';
 
SELECT DISTINCT compra.cliente_idCliente as 'Identificador do Cliente', dataCompra as 'Data da Compra', precoCompra as 'Preço do Ingresso', nomeSessao as 'Nome da Sessao', filmeLegendado as 'O filme é legendado?',
tituloFilme as 'Nome do Filme',nomeAtor as 'Nome do Ator' FROM ((((compra
 INNER JOIN sessao ON compra.sessao_idSessao = sessao.idSessao)
 INNER JOIN elenco ON sessao.filme_idFilme = elenco.filme_idFilme)
 INNER JOIN filme ON sessao.filme_idFilme = filme.idFilme)
 INNER JOIN ator ON elenco.atores_idAtores = ator.idAtor)
 WHERE nomeAtor LIKE '%min%' ORDER BY filme.idFilme;
