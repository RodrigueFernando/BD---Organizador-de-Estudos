CREATE TABLE usuario (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-
CREATE TABLE planejamento_de_estudo (
    id INT PRIMARY KEY,
    prazo DATE,
    usuario_id INT, 
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE materia (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    FOREIGN KEY (planejamento_id) REFERENCES planejamento_de_estudo(id)
);

CREATE TABLE tarefa (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    prazo DATE,
    usuario_id INT,
    planejamento_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (planejamento_id) REFERENCES planejamento_de_estudo(id)
);



CREATE TABLE simulado (
    id INT PRIMARY KEY,
    data DATE,
    usuario_id INT,
    planejamento_id INT,
    simulado_id INT,
    planejamento_id INT,
    FOREIGN KEY (simulado_id) REFERENCES simulado(id),
    FOREIGN KEY (planejamento_id) REFERENCES planejamento_de_estudo(id)
);

CREATE TABLE questionario (
    id INT PRIMARY KEY,
    descricao TEXT,
    simulado_id INT,
    planejamento_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (planejamento_id) REFERENCES planejamento_de_estudo(id)
);

CREATE TABLE resultado (
    id INT PRIMARY KEY,
    nota FLOAT,
    usuario_id INT,
    simulado_id INT, 
    simulado_id INT UNIQUE,
    FOREIGN KEY (simulado_id) REFERENCES simulado(id)
   
);