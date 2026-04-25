-- Usuário
INSERT INTO usuario VALUES (1, 'João', 'joao@email.com');

-- Matéria
INSERT INTO materia VALUES (1, 'Matemática');

-- Tarefa
INSERT INTO tarefa VALUES (1, 'Estudar função', '2026-05-10', 1);

-- Ligação tarefa e matéria
INSERT INTO tarefa_materia VALUES (1, 1);

-- Simulado
INSERT INTO simulado VALUES (1, '2026-05-15', 1);

-- Questionário
INSERT INTO questionario VALUES (1, 'Questão sobre função', 1);

-- Resultado
INSERT INTO resultado VALUES (1, 8.5, 'Bom desempenho', 1);