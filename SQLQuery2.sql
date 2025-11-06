-- Inserção de dados na tabela
INSERT INTO TiposPlanos(TipoPlano) VALUES('BASICO')
INSERT INTO TiposPlanos(TipoPlano) VALUES('PREMIUM')
INSERT INTO TiposPlanos VALUES('MASTER'),('PLUS ADVANCED')
-- Leitura
SELECT * FROM TiposPlanos


-- Inserção de dados na tabela
INSERT INTO TiposConsultas VALUES ('Primeira Consulta', 200), ('Retorno', 720),('Emergencia', 1200)
-- Leitura
SELECT * FROM TiposConsultas


-- Inserção de dados na tabela
INSERT INTO StatusConsultas VALUES ('Agendada'),('Cancelada'),('Realizada')
-- Leitura
SELECT * FROM StatusConsultas
-- Atualizar campos
UPDATE StatusConsultas
SET StatusConsulta = 'Concuida'
WHERE StatusConsulta = 'Realizada'


-- Alterar atributos (colunas)
ALTER TABLE EspecialidadesMedicas
ALTER COLUMN NomeEspecialidade VARCHAR(50) NOT NULL

-- Inserção de dados na tabela
INSERT INTO EspecialidadesMedicas VALUES
('Pediatra', 'Cuida das criança'),
('Cardiologista', 'Cuida do corassaum!'),
('Otorrinolaringologista', 'Esse fala por si só'),
('Dermatologista', ''),
('Urologista', 'Cuida dos homens!');
-- Leitura
SELECT * FROM EspecialidadesMedicas


-- Alterar atributos (colunas)
ALTER TABLE Convenios
ALTER COLUMN NomeConvenio VARCHAR(50) NOT NULL
ALTER TABLE Convenios
ALTER COLUMN SiteConvenio VARCHAR(50) NOT  NULL

-- Inserção de dados na tabela
INSERT INTO Convenios VALUES 
('Unimed', 'www.unimed.com.br', 02759852000140),
('NotreDame Intermédica', 'www.notredame.com.br', 06852439000102),
('SulAmérica Saúde', 'www.sulamerica.com.br', 12070853001072);
-- Leitura
SELECT * FROM Convenios

-- Alterar atributos (colunas)
ALTER TABLE Enderecos
ALTER COLUMN Logradouro NVARCHAR(50) NOT NULL
ALTER TABLE Enderecos
ALTER COLUMN Cidade VARCHAR(50) NOT NULL

-- Inserção de dados na tabela
INSERT INTO Enderecos VALUES
('Rua Presidente Everton Silva', 25, NULL, 'Arena da Morte', 'Rio de Janeiro', 819702000),
('Av. Rodrigo Fernando Grilo', 207, 'Sala 410', 'Jardim dos Mánacas', 'Araraquara', 14801534),
('Hôrto de Bueno de Andrada', NULL, 'Lote IV', 'Bueno de Andrada', 'Araraquara', 14812000),
('Rodovia Washington Luis', NULL, 'KM 310', 'Vale do Silicios', 'Limeira', 17901675);
-- Leitura
SELECT * FROM Enderecos

-- Atualizar campos
UPDATE ENDERECOS
SET Complemento = ''
WHERE Complemento IS NULL

-- Deletado inserção de dados duplicados
DELETE FROM Enderecos
WHERE id IN (5, 6, 7, 8);

-- Inserção de dados na tabela
INSERT INTO Medicos VALUES
( '12345-SP', 'Irineu', 'Pastor dos Santos', '2001-07-22'),
( '12348-BH', 'Calabreso', 'Pedro das Cruzes', '2000-09-01'),
( '12340-PE', 'Endo', 'Satoro Mysaki', '1987-11-05'),
( '12332-MS', 'Martha', 'Wayne', '2019-03-18');
-- Leitura
SELECT * FROM Medicos


-- Inserção de dados na tabela
INSERT INTO TelefonesMedicos VALUES
(55, 16, 998998898, 5),
(55, 11, 996997858, 3),
(55, 16, 999928810, 4),
(55, 16, 997990841, 2);
-- Leitura
SELECT * FROM TelefonesMedicos

-- Inserção de dados na tabela
INSERT INTO TelefonesConvenios VALUES
(55, 16, 999287653, 5),
(55, 11, 987055612, 3),
(55, 16, 936643251, 4);
-- Leitura
SELECT * FROM TelefonesConvenios

-- Deletado inserção de dados duplicados
DELETE FROM TelefonesConvenios
WHERE id IN (11, 12, 13);

INSERT INTO MedicosEspecialidades VALUES
(4, 5),
(2, 2),
(5, 1);
INSERT INTO MedicosEspecialidades VALUES (3, 4);
-- Leitura
SELECT * FROM MedicosEspecialidades

-- Inserção de dados na tabela
INSERT INTO Pacientes VALUES
('Steve', 'Rogers', 49487358201, '2000-06-28', 2),
('Tony', 'Stark', 40487267802, '1985-02-12', 1),
('Iris', 'West Allen', 49428505412, '1999-09-02', 4);
-- Leitura
SELECT * FROM Pacientes

-- Inserção de dados na tabela
INSERT INTO Pacientes VALUES
('Barry', 'Allen', 40455831502, '1997-01-10', 4),
('Felicity', 'Smoak Queen', 39048204602, '2008-05-17', 3);
-- Leitura
SELECT * FROM Pacientes

-- Inserção de dados na tabela
INSERT INTO TelefonesPacientes VALUES
(55, 16, 908460851, 3),
(55, 12, 996078045, 1),
(55, 16, 907802746, 4),
(55, 17, 907005821, 1),
(55, 11, 997004580, 5),
(55, 13, 996047860, 2);
-- Leitura
SELECT * FROM TelefonesPacientes

-- Inserção de dados na tabela
INSERT INTO Emails VALUES
('steve.rogers@outlook.com', 1),
('felicity.queen@gmail.com', 5),
('tony.stark@industriastark.com.br', 2),
('barry.allen@gmail.com', 4),
('iris.allen@gmail.com', 3);
-- Leitura
SELECT * FROM Emails

-- Alterar atributos (colunas)
ALTER TABLE Emails
ALTER COLUMN Email VARCHAR(50) NOT NULL

-- Inserção de dados na tabela
INSERT INTO PacientesParticulares VALUES
(2, 450.89),
(5, 790.99);
-- Leitura
SELECT * FROM PacientesParticulares

-- Inserção de dados na tabela
INSERT INTO PacientesConveniados VALUES
(4, 3, 10004807569042, '2026-12-05', 11),
(5, 4, 90085184613784, '2027-01-27', 3),
(3, 1, 35085541668588, '2026-11-18', 1);
-- Leitura
SELECT * FROM PacientesConveniados

-- Inserção de dados na tabela
INSERT INTO Consultas VALUES
('2025-10-28 13:29:00', 2, 1, 'Retorno Médico com entrega de exames', 'Baixa  circulação sanguinea', 4, 2),
('2025-11-04 18:52:00', 1, 1, '', 'Dengue', 1, 5),
('2025-09-20', 3, 3, 'Cirurgia imediato', 'Perna amputada', 3, 3),
('2025-11-05 08:47:00', 3, 3, 'Processo de parto', 'Fila de espera', 5, 4),
('2025-10-13 12:26:00', 1, 2, 'Fora de horário de atendimento', 'Só veio pelo atestado', 2, 3);
-- Leitura
SELECT * FROM Consultas

SELECT * FROM Convenios
SELECT * FROM TelefonesConvenios

SELECT c.NomeConvenio, c.SiteConvenio, c.CNPJ,
	t.CodPais, t.CodArea, t.Numero,
	e.Logradouro, e.Numero, e.Complemento, e.Bairro, e.Cidade, e.CEP
FROM Convenios c
LEFT JOIN TelefonesConvenios t     -- LEFT (ele traz todos, mesmo aqueles que não tem)
ON c.idConvenio = t.idConvenio
LEFT JOIN Enderecos e
ON c.idEndereco = e.id


ALTER TABLE Convenios
ADD idEndereco INT

ALTER TABLE Convenios
ADD FOREIGN KEY (idEndereco) REFERENCES Enderecos(id)

INSERT INTO Enderecos (Logradouro, Numero, Bairro, Cidade, CEP)
VALUES('Rua Majestade', 70,'Jd das Pedras', 'Campinas', 14804895)

SELECT * FROM Enderecos

UPDATE Convenios
SET idEndereco = 1005
WHERE idConvenio = 3

SELECT * FROM MedicosEspecialidades

DELETE FROM MedicosEspecialidades WHERE id = 2


ALTER TABLE MedicosEspecialidades
ADD CONSTRAINT UQ_MedicosEspecialidades UNIQUE (idMedico, idEspecialidade)  -- Transforma a soma dos dois campos como único

-- ALTER TABLE MedicosEspecialidades                               *Essa é a segunda maneira, ocorre a este quando não existe chaves primárias
-- ADD CONSTRAINT PK_MedicosEspecialidades PRIMARY KEY (idMedico, idEspecialidade)

SELECT * FROM Pacientes
SELECT * FROM Enderecos

--SELECT * FROM Pacientes
--JOIN Enderecos
--ON Pacientes.idEndereco = Enderecos.id

--SELECT p.Nome, p.Sobrenome, p.CPF, e.CEP
--FROM Pacientes p
--JOIN  Enderecos e
--ON p.idEndereco = e.id

INSERT INTO Pacientes
VALUES('Henrique', 'Rossin', 45645567, '2002-04-09',2)

SELECT p.Nome, p.Sobrenome, p.CPF, e.CEP, tp.Numero
FROM Pacientes p
LEFT JOIN  Enderecos e
ON p.idEndereco = e.id
LEFT JOIN TelefonesPacientes tp
ON p.idPaciente = tp.idPaciente


-- FILTRO
SELECT p.Nome, p.Sobrenome, p.CPF, e.CEP, tp.Numero    -- Colunas que quero de informação
FROM Pacientes p     -- Primeira tabela para juntar
LEFT JOIN  Enderecos e     -- Segunda tabela para juntar
ON p.idEndereco = e.id      -- campos incomuns para juntar
LEFT JOIN TelefonesPacientes tp  -- Segunda tabela para juntar (tendo a junção como a primeira)
ON p.idPaciente = tp.idPaciente     -- campos incomuns para juntar
WHERE e.CEP = 14801534   -- Condição para o filtro


-- agora o objetivo é juntar essas três tabelas (muitos pra muitos)
SELECT * FROM Medicos
SELECT * FROM MedicosEspecialidades
SELECT * FROM EspecialidadesMedicas

SELECT m.Nome, m.Sobrenome, m.CRM, e.NomeEspecialidade
FROM MedicosEspecialidades me
JOIN EspecialidadesMedicas e
ON me.idEspecialidade = e.idEspecialidade
JOIN Medicos m
ON me.idMedico = m.idMedico



