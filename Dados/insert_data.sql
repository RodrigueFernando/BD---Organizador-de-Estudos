-- USUARIO
INSERT INTO usuario (id, nome, email) VALUES
(1, 'João', 'joao@email.com');

-- MATERIA
INSERT INTO materia (id, nome) VALUES
(1, 'Matemática');

-- PLANEJAMENTO DE ESTUDO
INSERT INTO planejamento_de_estudo (id, prazo, usuario_id) VALUES
(1, '2026-05-30', 1);

-- TAREFA (ligada ao usuário e ao planejamento)
INSERT INTO tarefa (id, titulo, prazo, usuario_id, planejamento_id) VALUES
(1, 'Estudar equações', '2026-05-10', 1, 1);

-- RELACIONAMENTO N:N TAREFA x MATERIA
INSERT INTO tarefa_materia (tarefa_id, materia_id) VALUES
(1, 1);

-- SIMULADO (ligado ao usuário e ao planejamento)
INSERT INTO simulado (id, data, usuario_id, planejamento_id) VALUES
(1, '2026-05-15', 1, 1);

-- QUESTIONARIO (ligado ao simulado)
INSERT INTO questionario (id, descricao, simulado_id) VALUES
(1, 'Questões básicas', 1);

-- RESULTADO (1:1 com simulado)
INSERT INTO resultado (id, nota, feedback, simulado_id) VALUES
(1, 8.5, 'Bom desempenho', 1);