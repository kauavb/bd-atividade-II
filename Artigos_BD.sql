-- Criar Bando de dados chamado Blog
CREATE DATABASE Blog;

-- Selecionando o Banco de dados
USE Blog;

-- Criar uma tabela no Banco de dados selecionado
CREATE TABLE Artigos(
	Id int AUTO_INCREMENT PRIMARY KEY,
    Titulo varchar(150) not null,
    Conteudo varchar(255) not null,
    DataPublicacao varchar(10) not null
);

CREATE TABLE Comentarios(
	Id int AUTO_INCREMENT PRIMARY KEY,
    Autor varchar(255) not null,
    Texto varchar(255) not null,
    DataComentario varchar(10) not null,
    Id_Artigos int,
	FOREIGN KEY(Id_Artigos) REFERENCES Artigos(Id)
);

-- Inserindo valores nas tabelas
INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('Porque Bob Esponja é Revolucionario?', 
'Este artigo te apresentará argumentos e observações sobre o revolucionario desenho infantil Bob Esponja',
 '12/11/2022');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Guilhermito =', 
'COncordo!! Incrivel Desenho',
'20/01/2023', 1),
('Leticia Amanda', 
'Eu acho o auge! Dsenho incrivel! mudou minha vida',
'12/01/2023', 1);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('É assim que acaba', 
'Em “É assim que acaba” a autora nos apresenta Lily, uma jovem que se mudou de Maine, nos Estados Unidos, para Boston. Já na nova cidade, 
a protagonista se forma em Marketing, abre uma floricultura e conhece Ryle, um neurocirurgião bastante diferente dela, mas os dois se atraem como imãs. 
Ao se apaixonarem, no entanto, ela se vê em um relacionamento turbulento, instável e muito diferente do que ela sonhava.',
 '29/06/2019');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Kaua Bispo', 
'Não entendi o plot do artigo mas foi algo levemente tocante alguns pontos dele, mediano.',
'11/11/2021', 2);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('Mais esperto que o diabo', 
'Nesta obra de Napoleon Hill, o diabo não é a figura do antagonista do cristianismo: sua atuação está no campo da mente – que vazia – abre espaço para pensamentos negativos sobre tudo.',
 '13/02/2021');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Amo mutcho', 
'Incrivel!! Fiquei surpresa lendo',
'28/11/2022', 3),
('Mariana Caramelo',
'AMo muito. Pensamentos intrusivos ao le-lo',
'07/05/2023', 3);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('Amor e gelato', 
'Em “Amor e Gelato” conhecemos Lina, uma adolescente que perdeu a mãe vítima de câncer e se viu obrigada a atender seu último pedido: viajar para a Itália, na Toscana, para conhecer seu pai.
  Já na Europa, Lina recebe um antigo diário de e se vê inundada por um mundo de descobertas e reviravoltas.',
 '31/03/2017');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Kaua Bispo', 
'Chato...',
'03/01/2021', 4),
('Joao Victor',
'Muito bom',
'30/06/2022', 4);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('Os sete maridos de Evelyn Hugo', 
'A protagonista da história de Jenkins Reid é uma famosa artista chamada Evelyn Hugo, personagem ficcional que ao completar 80 anos convida a jornalista Monique Grant para escrever a sua biografia.',
 '01/03/2021');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Joao Victor', 
'Muito interessante todos os casamentos deles, amei toda a historia dela!!!!',
'28/01/2020', 5);


SELECT * FROM Blog.Artigos;
SELECT * FROM Blog.Comentarios;

-- Apagar a tabela
DROP TABLE Blog.Artigos;
DROP TABLE Blog.Comentarios;