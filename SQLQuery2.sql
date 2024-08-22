--- 1
SELECT Nome, Ano FROM Filmes

--- 2 
SELECT * From Filmes 
ORDER BY Ano

--- 3 
SELECT * FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

--- 4 
 SELECT * FROM Filmes 
 WHERE Ano = 1997

--- 5 
SELECT * FROM Filmes
WHERE Ano >= 2000

--- 6 
SELECT * FROM Filmes 
WHERE Duracao > 100 AND Duracao <= 150
ORDER BY Duracao

--- 7 
SELECT 
    Ano,
	COUNT(Ano) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--- 8 
SELECT *  FROM Atores
WHERE Genero = 'M'

--- 9 
SELECT * FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--- 10 
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id

--- 11 
SELECT F.Nome, G.Genero 
FROM Filmes F 
JOIN FilmesGenero FG ON F.id = FG.IdFilme 
join Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'


--- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, El.Papel 
FROM Filmes F
JOIN ElencoFilme EL ON F.Id = EL.IdFilme
JOIN Atores  A ON  A.Id = EL.IdAtor
 