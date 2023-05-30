INSERT INTO endereco (estado, cidade, rua, cep, numero, complemento) VALUES
  ('São Paulo', 'São Paulo', 'Avenida Paulista', '01310-200', '123', 'Ap. 456'),
  ('Rio de Janeiro', 'Rio de Janeiro', 'Rua Copacabana', '22070-012', '789', NULL),
  ('Minas Gerais', 'Belo Horizonte', 'Rua da Liberdade', '30140-010', '456', 'Sala 789'),
  ('Paraná', 'Curitiba', 'Rua das Flores', '80010-030', '987', 'Loja 123'),
  ('Bahia', 'Salvador', 'Avenida Oceânica', '40170-010', '654', NULL),
  ('Rio Grande do Sul', 'Porto Alegre', 'Rua dos Andradas', '90020-010', '321', NULL),
  ('Santa Catarina', 'Florianópolis', 'Avenida Beira-Mar', '88015-600', '852', 'Bloco B'),
  ('Goiás', 'Goiânia', 'Rua 7 de Setembro', '74030-100', '753', NULL),
  ('Pernambuco', 'Recife', 'Avenida Boa Viagem', '51011-000', '951', NULL),
  ('Ceará', 'Fortaleza', 'Avenida Beira-Mar', '60165-121', '159', 'Apartamento 753');

 INSERT INTO pessoa (nome, dataNasc, cpf, idEndereco, telefone, email) VALUES
  ('João Silva', '1985-05-10', '12345678901', 1, '(11) 1234-5678', 'joao.silva@example.com'),
  ('Maria Santos', '1990-09-20', '98765432101', 2, '(21) 9876-5432', 'maria.santos@example.com'),
  ('Pedro Oliveira', '1988-03-15', '45678912301', 3, '(31) 4567-8901', 'pedro.oliveira@example.com'),
  ('Ana Souza', '1995-07-05', '65432198701', 4, '(41) 6543-2198', 'ana.souza@example.com'),
  ('Lucas Pereira', '1992-11-25', '98765432102', 5, '(71) 9876-5432', 'lucas.pereira@example.com'),
  ('Mariana Costa', '1987-02-12', '12345678902', 6, '(51) 1234-5678', 'mariana.costa@example.com'),
  ('Rafael Santos', '1993-06-18', '45678912302', 7, '(48) 4567-8901', 'rafael.santos@example.com'),
  ('Carolina Oliveira', '1998-09-28', '65432198702', 8, '(62) 6543-2198', 'carolina.oliveira@example.com'),
  ('Bruno Sousa', '1986-04-22', '98765432103', 9, '(81) 9876-5432', 'bruno.sousa@example.com'),
  ('Isabela Fernandes', '1994-08-08', '12345678903', 10, '(85) 1234-5678', 'isabela.fernandes@example.com');

 INSERT INTO medico (crm, idPessoa, especialidade) VALUES
  ('123456SP', 1, 'Cardiologia'),
  ('987654RJ', 2, 'Dermatologia'),
  ('456789MG', 3, 'Pediatria'),
  ('654321PR', 4, 'Ginecologia'),
  ('987654RS', 5, 'Ortopedia'),
  ('123456SC', 6, 'Neurologia'),
  ('456789GO', 7, 'Oftalmologia'),
  ('654321PE', 8, 'Psiquiatria'),
  ('987654CE', 9, 'Endocrinologia'),
  ('123456BA', 10, 'Otorrinolaringologia');

 INSERT INTO paciente (tpSanguineo, idPessoa, sexoBiologico, alergico) VALUES
  ('A+', 1, 'M', false),
  ('O-', 2, 'F', true),
  ('B+', 3, 'M', false),
  ('AB+', 4, 'F', true),
  ('O+', 5, 'M', false),
  ('A-', 6, 'F', false),
  ('B-', 7, 'M', true),
  ('AB-', 8, 'F', false),
  ('O-', 9, 'M', true),
  ('A+', 10, 'F', false);
 
 INSERT INTO remedio (nome, composicao, validade) VALUES
  ('Paracetamol', 'Paracetamol 500mg', '2024-12-31'),
  ('Amoxicilina', 'Amoxicilina 250mg', '2023-10-15'),
  ('Dipirona', 'Dipirona 500mg', '2024-06-30'),
  ('Omeprazol', 'Omeprazol 20mg', '2023-11-30'),
  ('Dorflex', 'Cafeína, Citrato de Orfenadrina, Dipirona Monoidratada, Paracetamol', '2024-09-30'),
  ('Ranitidina', 'Ranitidina 150mg', '2024-08-31'),
  ('Dexametasona', 'Dexametasona 4mg', '2023-12-31'),
  ('Clonazepam', 'Clonazepam 2mg', '2024-07-31'),
  ('Losartana', 'Losartana Potássica 50mg', '2024-05-31'),
  ('Sinvastatina', 'Sinvastatina 20mg', '2023-09-30');
 
 INSERT INTO cadastroAlergia (nomeAlergia, idRemedio) VALUES
  ('Alergia a Penicilina', 2),
  ('Alergia a Dipirona', 3),
  ('Alergia a Látex', 6),
  ('Alergia a Aspirina', 1),
  ('Alergia a Ibuprofeno', 5),
  ('Alergia a Pólen', 8);

 INSERT INTO pacienteAlergia (idPaciente, idCadastroAlergico) VALUES
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9);


 
 INSERT INTO remediosReceita (idRemedio, idReceita) VALUES
  (1, 1),
  (2, 1),
  (3, 2),
  (4, 2),
  (5, 3),
  (6, 4),
  (7, 5),
  (8, 5),
  (9, 6),
  (10, 7);

 INSERT INTO receita (qtdDiasAtestado, codigoValidador) VALUES
  (7, 123456),
  (10, 987654),
  (5, 456789),
  (3, 654321),
  (14, 987654),
  (7, 123456),
  (5, 456789),
  (7, 654321),
  (10, 987654),
  (3, 123456);

 INSERT INTO consulta (diagnostico, idPaciente, idMedico, idReceita, dataConsulta) VALUES
  ('Gripe', 1, 1, 1, '2023-01-05'),
  ('Dermatite', 2, 2, 2, '2023-02-10'),
  ('Febre', 3, 3, 3, '2023-03-15'),
  ('Infecção Urinária', 4, 4, 4, '2023-04-20'),
  ('Torção no tornozelo', 5, 5, 5, '2023-05-25'),
  ('Enxaqueca', 6, 6, 6, '2023-06-30'),
  ('Pressão alta', 7, 7, 7, '2023-07-05'),
  ('Ansiedade', 8, 8, 8, '2023-08-10'),
  ('Diabetes', 9, 9, 9, '2023-09-15'),
  ('Rinite alérgica', 10, 10, 10, '2023-10-20');


