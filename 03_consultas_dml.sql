USE polyglot_academy;

-- 1. Consultar todos os alunos matriculados e seus respectivos cursos (JOIN)
SELECT
    A.Nome_Completo AS Aluno,
    A.Email,
    C.Nome_Curso AS Curso_Matriculado,
    M.Data_Matricula
FROM ALUNO A
JOIN MATRICULA M ON A.ID_Aluno = M.ID_Aluno
JOIN CURSO C ON M.ID_Curso = C.ID_Curso
ORDER BY C.Nome_Curso, A.Nome_Completo;

-- 2. Consultar o feedback e a nota dos alunos que tiraram nota maior que 8.0 (WHERE e JOIN)
SELECT
    A.Nome_Completo AS Aluno,
    AV.Nota,
    P.Nome_Completo AS Professor,
    M.Nome_Modulo AS Modulo
FROM AVALIACAO AV
JOIN ALUNO A ON AV.ID_Aluno = A.ID_Aluno
JOIN PROFESSOR P ON AV.ID_Professor = P.ID_Professor
JOIN MODULO M ON AV.ID_Modulo = M.ID_Modulo
WHERE AV.Nota > 8.0
ORDER BY AV.Nota DESC;

-- 3. Listar os professores e quantas aulas cada um está envolvido (GROUP BY e COUNT)
SELECT
    P.Nome_Completo AS Professor,
    P.Especialidade,
    COUNT(A.ID_Aula) AS Total_Aulas_Ministradas
FROM PROFESSOR P
JOIN AULA A ON P.ID_Professor = A.ID_Professor
GROUP BY P.Nome_Completo, P.Especialidade
ORDER BY Total_Aulas_Ministradas DESC;

-- 4. Encontrar pagamentos pendentes, ordenados pela data de vencimento (WHERE e ORDER BY, LIMIT)
SELECT
    P.ID_Pagamento,
    A.Nome_Completo AS Aluno,
    PG.Valor_Pago,
    PG.Data_Vencimento
FROM PAGAMENTO PG
JOIN MATRICULA MT ON PG.ID_Matricula = MT.ID_Matricula
JOIN ALUNO A ON MT.ID_Aluno = A.ID_Aluno
WHERE PG.Status_Pagamento = 'Pendente'
ORDER BY PG.Data_Vencimento ASC
LIMIT 10;