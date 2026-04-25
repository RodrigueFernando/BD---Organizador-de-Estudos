#  Descrição do Banco de Dados

##  Introdução
Este banco de dados foi desenvolvido para o sistema Organizador Inteligente de Estudos, com o objetivo de gerenciar tarefas, matérias, simulados e desempenho dos usuários.

---

##  Entidades

### Usuário
Armazena os dados dos usuários do sistema.
- id
- nome
- email

### Tarefa
Representa atividades de estudo.
- id
- titulo
- prazo

### Matéria
Define as disciplinas estudadas.
- id
- nome

### Simulado
Registra testes realizados pelo usuário.
- id
- data
- nota
- pergunta

### Questionário
Contém perguntas associadas ao simulado.
- id
- descricao

### Resultado
Armazena o desempenho do usuário no simulado.
- id
- nota
- data

### PlanejamentoDeEstudo
Representa o planejamento de estudos do usuário.
- id
- prazo
---

## Relacionamentos

- Um usuário pode ter várias tarefas (1:N)
- Uma tarefa pode estar associada a várias matérias (N:N)
- Um usuário pode realizar vários simulados (1:N)
- Um simulado contém vários questionários (1:N)
- Um simulado gera um único resultado (1:1)
- Um usuário pode ter vários planejamentos (1:N)
- Um planejamento organiza várias tarefas (1:N)

---

##  Regras de Negócio

- O email do usuário deve ser único
- Uma tarefa deve estar associada a um usuário
- Um simulado pertence a um usuário
- Um resultado está ligado a apenas um simulado
- Não pode existir resultado sem simulado

---

##  Considerações Finais

O banco foi estruturado com base no modelo entidade-relacionamento, garantindo integridade e organização dos dados.