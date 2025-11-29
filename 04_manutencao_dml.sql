USE polyglot_academy;

UPDATE CURSO
SET Valor_Mensalidade = 165.00
WHERE Nome_Curso = 'Inglês Básico I';

UPDATE PROFESSOR
SET Telefone = '51999991111'
WHERE ID_Professor = 3;

UPDATE PAGAMENTO
SET Status_Pagamento = 'Pago', Data_Pagamento = CURDATE()
WHERE ID_Matricula = 3 AND Status_Pagamento = 'Pendente';

DELETE FROM AULA
WHERE ID_Aula = 3;

DELETE FROM MODULO
WHERE Nome_Modulo = 'Simple Past';

DELETE FROM PAGAMENTO
WHERE ID_Pagamento = 4 AND Status_Pagamento = 'Atrasado';
