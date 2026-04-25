# Organizador Inteligente de Estudos

Sistema para ajudar estudantes a organizar tarefas, estudar e acompanhar desempenho.

---

##  Objetivo

Organizar estudos com priorização automática, simulados e acompanhamento de resultados.

---

##  Funcionalidades

* Cadastro de tarefas
* Organização por prioridade
* Simulados
* Questionários
* Resultados e desempenho

---

## 🗄️ Banco de Dados

### Entidades:

* Usuário
* Tarefa
* Matéria
* Simulado
* Questionário
* Resultado

### Relacionamentos:

* Usuário (1:N) Tarefa
* Tarefa (N:N) Matéria
* Usuário (1:N) Simulado
* Simulado (1:N) Questionário
* Simulado (1:1) Resultado

---

## Estrutura do Projeto

```
database/
  schema.sql
  insert_data.sql

docs/
  DER.png
  descricao.md
```

---

##  Como usar

Execute o script:

schema.sql
insert_data.sql


---

##  Autor

Fernando Rodrigues
