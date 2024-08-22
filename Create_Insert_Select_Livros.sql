CREATE TABLE Livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano_publicacao INT,
    genero VARCHAR(100)
);

INSERT INTO Livros (titulo, autor, ano_publicacao, genero)
VALUES ('Dom Casmurro', 'Machado de Assis', 1899, 'Romance');

INSERT INTO Livros (titulo, autor, ano_publicacao, genero)
VALUES ('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, 'Ficção');

INSERT INTO Livros (titulo, autor, ano_publicacao, genero)
VALUES ('O Cortiço', 'Aluísio Azevedo', 1890, 'Naturalismo');

SELECT * FROM Livros;