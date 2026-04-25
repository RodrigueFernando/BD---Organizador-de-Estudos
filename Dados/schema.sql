CREATE TABLE usuario (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE materia (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE tarefa (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    prazo DATE,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE materia (
    tarefa_id INT,
    materia_id INT,
    PRIMARY KEY (tarefa_id, materia_id),
    FOREIGN KEY (tarefa_id) REFERENCES tarefa(id),
    FOREIGN KEY (materia_id) REFERENCES materia(id)
);

CREATE TABLE simulado (
    id INT PRIMARY KEY,
    data DATE,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE questionario (
    id INT PRIMARY KEY,
    descricao TEXT,
    simulado_id INT,
    FOREIGN KEY (simulado_id) REFERENCES simulado(id)
);

CREATE TABLE resultado (
    id INT PRIMARY KEY,
    nota FLOAT,
    feedback TEXT,
    simulado_id INT UNIQUE,
    FOREIGN KEY (simulado_id) REFERENCES simulado(id)
);