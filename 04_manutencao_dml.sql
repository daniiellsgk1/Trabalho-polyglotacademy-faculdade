USE polyglot_academy;

-- ===================================
-- COMANDOS UPDATE (3 COMANDOS MÍNIMOS)
-- ===================================

-- 1. ALTERAR a mensalidade do curso 'Inglês Básico I' para R$ 165.00
UPDATE CURSO
SET Valor_Mensalidade = 165.00
WHERE Nome_Curso = 'Inglês Básico I';

-- 2. ATUALIZAR o telefone de um professor (ID 3 - Lucia)
UPDATE PROFESSOR
SET Telefone = '51999991111'
WHERE ID_Professor = 3;

-- 3. MARCAR o pagamento pendente do Pedro Costa (ID_Matricula 3) como 'Pago'
UPDATE PAGAMENTO
SET Status_Pagamento = 'Pago', Data_Pagamento = CURDATE()
WHERE ID_Matricula = 3 AND Status_Pagamento = 'Pendente';

-- ===================================
-- COMANDOS DELETE (3 COMANDOS MÍNIMOS)
-- ===================================

-- 1. DELETAR a entrada de aula do aluno Pedro (ID_Aula 3), pois a aula será remarcada.
DELETE FROM AULA
WHERE ID_Aula = 3;

-- 2. DELETAR o módulo 'Simple Past' (ID_Modulo 2) para substituí-lo por uma versão atualizada.
DELETE FROM MODULO
WHERE Nome_Modulo = 'Simple Past';

-- 3. DELETAR um registro de pagamento (o pagamento atrasado da Mariana - ID_Pagamento 4)
DELETE FROM PAGAMENTO
WHERE ID_Pagamento = 4 AND Status_Pagamento = 'Atrasado';

-- Verificação final de um DELETE (opcional):
-- SELECT * FROM PAGAMENTO;