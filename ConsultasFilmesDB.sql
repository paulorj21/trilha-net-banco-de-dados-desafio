-- BUSCANDO O NOME E ANO DOS FILMES
SELECT Nome, Ano FROM Filmes;

-- BUSCANDO NOME E ANO ORDENANDO PELO ANO
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

-- BUSCANDO O NOME, ANO E A DURAÇÃO DO FILME "DE VOLTA PARA O FUTURO"
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- BUSCANDO OS FILMES LANÇADOS EM 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- BUSCANDO OS FILMES LANÇADOS APÓS 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- BUSCANDO FILMES COM DURACAO ENTRE 100 E 150 MINUTOS ORDENANDO PELA DURACAO
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

-- BUSCANDO A QUANTIDADE DE FILMES LANÇADOS EM CADA ANO EM ORDEM DECRESCENTE
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- BUSCANDO OS ATORES DO GÊNERO MASCULINO
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- BUSCANDO OS ATORES DO GÊNERO FEMININO ORDENANDO PELO PRIMEIRO NOME
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- BUSCANDO O NOME DE CADA FILME E SEU GÊNERO
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

-- BUSCANDO O NOME DE CADA FILME DO TIPO MISTÉRIO
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério';


-- BUSCANDO O NOME DOS FILMES, ATORES E PAPÉIS
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;