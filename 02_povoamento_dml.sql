USE polyglot_academy;

INSERT INTO CURSO (Nome_Curso, Carga_Horaria_Total, Valor_Mensalidade) VALUES
('Inglês Básico I', 60, 150.00),
('Espanhol Avançado', 80, 220.50),
('Francês Intermediário', 75, 180.00);

INSERT INTO MODULO (ID_Curso, Nome_Modulo, Descricao, Link_Conteudo) VALUES
(1, 'Verbos Modais', 'Estudo dos verbos can, could, should...', 'http://link-aula-modais'),
(1, 'Simple Past', 'Introdução ao passado simples e irregular verbs.', 'http://link-aula-passado'),
(2, 'Subjuntivo Imperfeito', 'Uso do subjuntivo para desejos e dúvidas.', NULL),
(3, 'Introdução ao Passé Composé', 'Estrutura do passado composto em Francês.', NULL);

INSERT INTO PROFESSOR (Nome_Completo, Email, Telefone, Especialidade, Data_Admissao) VALUES
('Ana Clara Souza', 'ana.souza@polyglot.com', '11987654321', 'Inglês', '2023-01-15'),
('Carlos Eduardo Lima', 'carlos.lima@polyglot.com', '21998765432', 'Espanhol', '2022-05-20'),
('Lucia Maria Oliveira', 'lucia.oliveira@polyglot.com', '31966665555', 'Francês', '2024-02-10');

INSERT INTO ALUNO (Nome_Completo, CPF, Data_Nascimento, Email, Telefone, Endereco) VALUES
('Mariana Ferreira', '12345678901', '2000-10-25', 'mariana.f@email.com', '31988887777', 'Rua Alfa, 100, Centro'),
('João Silva', '98765432109', '1995-04-12', 'joao.silva@email.com', '41977776666', 'Av. Beta, 50, Jardim'),
('Pedro Costa', '11122233344', '1998-07-01', 'pedro.c@email.com', '51955554444', 'Rua Gama, 20, Bairro Novo');

INSERT INTO MATRICULA (ID_Aluno, ID_Curso, Data_Matricula, Status_Matricula) VALUES
(1, 1, '2024-03-01', 'Ativa'),
(2, 2, '2024-01-20', 'Ativa'),
(3, 3, '2024-04-15', 'Ativa');

INSERT INTO PAGAMENTO (ID_Matricula, Valor_Pago, Data_Vencimento, Data_Pagamento, Status_Pagamento) VALUES
(1, 150.00, '2024-04-05', '2024-04-03', 'Pago'),      
(2, 220.50, '2024-04-25', '2024-04-25', 'Pago'),       
(3, 180.00, '2024-05-10', NULL, 'Pendente'),           
(1, 150.00, '2024-05-05', '2024-05-08', 'Atrasado');    

INSERT INTO AULA (ID_Professor, ID_Modulo, ID_Aluno, Data_Hora_Inicio, Duracao_Minutos, Link_Reuniao, Presenca) VALUES
(1, 1, 1, '2024-05-10 10:00:00', 50, 'http://meet.com/aula1', TRUE),   
(2, 3, 2, '2024-05-10 14:00:00', 60, 'http://meet.com/aula2', TRUE), 
(3, 4, 3, '2024-05-11 09:00:00', 50, 'http://meet.com/aula3', FALSE); 

INSERT INTO AVALIACAO (ID_Aluno, ID_Modulo, ID_Professor, Nota, Data_Lancamento, Feedback_Professor) VALUES
(1, 1, 1, 9.50, '2024-05-10 11:00:00', 'Excelente domínio dos verbos.'),
(2, 3, 2, 8.25, '2024-05-10 15:00:00', 'Bom desempenho, revisar uso em frases complexas.');