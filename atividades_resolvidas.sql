-- BANCO DE DADOS: escola_senai
CREATE DATABASE IF NOT EXISTS escola_senai;
USE escola_senai;

-- ============================================================================
-- PARTE 1 — INSERT INTO: POPULANDO O BANCO
-- ============================================================================

-- EX. 1 INSERT: Cursos
INSERT INTO curso (nome, carga_horaria_total, turno) VALUES ('Técnico em Informática para Internet', 2400, 'Manha');
INSERT INTO curso (nome, carga_horaria_total, turno) VALUES ('Técnico em Administração', 1800, 'Tarde');
INSERT INTO curso (nome, carga_horaria_total, turno) VALUES ('Técnico em Logística', 1600, 'Noite');

-- EX. 2 INSERT: Salas
INSERT INTO sala (numero, capacity, tipo) VALUES ('Sala 101', 30, 'Sala_Comum');
INSERT INTO sala (numero, capacity, tipo) VALUES ('Sala 202', 20, 'Laboratorio');
INSERT INTO sala (numero, capacity, tipo) VALUES ('Auditório Principal', 100, 'Auditorio');

-- EX. 3 INSERT: Professores
INSERT INTO professor (nome, cpf, titulacao, data_admissao) VALUES ('Ana Paula Ferreira', '11111111111', 'Mestre', '2020-03-01');
INSERT INTO professor (nome, cpf, titulacao, data_admissao) VALUES ('Carlos Mendes', '22222222222', 'Especialista', '2019-08-15');
INSERT INTO professor (nome, cpf, titulacao, data_admissao) VALUES ('Fernanda Costa', '33333333333', 'Doutor', '2021-01-10');

-- EX. 4 INSERT: Turma e Alunos
INSERT INTO turma (codigo, ano_letivo, turno, id_curso) VALUES ('TI-2026-M', 2026, 'Manha', 1);

INSERT INTO aluno (nome, cpf, data_nascimento, id_turma) VALUES
('João Silva', '44444444444', '2006-05-10', 1),
('Maria Souza', '55555555555', '2005-11-22', 1),
('Pedro Alves', '66666666666', '2007-02-14', 1),
('Carla Rocha', '77777777777', '2006-08-30', 1);

-- EX. 5 INSERT: Disciplinas
INSERT INTO disciplina (nome, carga_horaria, id_curso) VALUES ('Banco de Dados', 80, 1);
INSERT INTO disciplina (nome, carga_horaria, id_curso) VALUES ('Algoritmos e Lógica de Programação', 120, 1);
INSERT INTO disciplina (nome, carga_horaria, id_curso) VALUES ('Redes de Computadores', 60, 1);
INSERT INTO disciplina (nome, carga_horaria, id_curso) VALUES ('Desenvolvimento Web', 100, 1);

-- EX. 6 INSERT: Ficha do Aluno
INSERT INTO ficha_aluno (id_aluno, data_matricula, situacao) VALUES (1, '2026-02-01', 'Ativo');
INSERT INTO ficha_aluno (id_aluno, data_matricula, situacao) VALUES (2, '2026-02-01', 'Ativo');
INSERT INTO ficha_aluno (id_aluno, data_matricula, situacao) VALUES (3, '2026-02-01', 'Ativo');
INSERT INTO ficha_aluno (id_aluno, data_matricula, situacao) VALUES (4, '2026-02-01', 'Trancado');

-- EX. 7 INSERT: Dependentes
INSERT INTO dependente (num_dependente, id_aluno, nome, parentesco, data_nascimento) VALUES 
(1, 1, 'Maria Silva', 'Mae', '1980-04-12'), 
(1, 2, 'Roberto Souza', 'Pai', '1975-09-20'), 
(2, 2, 'Lucas Souza', 'Filho', '2008-03-05');

-- EX. 8 INSERT: Aulas
INSERT INTO aula (id_professor, id_turma, id_disciplina, dia_semana, horario) VALUES (1, 1, 1, 'Quarta', '08:00');
INSERT INTO aula (id_professor, id_turma, id_disciplina, dia_semana, horario) VALUES (2, 1, 2, 'Segunda', '13:00');
INSERT INTO aula (id_professor, id_turma, id_disciplina, dia_semana, horario) VALUES (3, 1, 3, 'Terca', '10:00');

-- EX. 9 INSERT: Avaliações
INSERT INTO avaliacao (id_avaliacao, id_aluno, id_disciplina, tipo, nota, data_avaliacao) VALUES (1, 1, 1, 'Prova', 8.5, '2026-03-20');
INSERT INTO avaliacao (id_avaliacao, id_aluno, id_disciplina, tipo, nota, data_avaliacao) VALUES (2, 2, 1, 'Prova', 9.0, '2026-03-20');
INSERT INTO avaliacao (id_avaliacao, id_aluno, id_disciplina, tipo, nota, data_avaliacao) VALUES (3, 3, 1, 'Prova', 6.5, '2026-03-20');
INSERT INTO avaliacao (id_avaliacao, id_aluno, id_disciplina, tipo, nota, data_avaliacao) VALUES (4, 4, 1, 'Trabalho', 7.0, '2026-03-22');
INSERT INTO avaliacao (id_avaliacao, id_aluno, id_disciplina, tipo, nota, data_avaliacao) VALUES (5, 1, 2, 'Prova', 7.5, '2026-03-21');

-- EX. 10 INSERT: Equipamentos e Empréstimos
INSERT INTO equipamento (nome, numero_patrimonio, tipo, status) VALUES ('Notebook Dell', 'NB-001', 'Notebook', 'Disponivel');
INSERT INTO equipamento (nome, numero_patrimonio, tipo, status) VALUES ('Notebook Samsung', 'NB-002', 'Notebook', 'Disponivel');
INSERT INTO equipamento (nome, numero_patrimonio, tipo, status) VALUES ('Projetor Epson', 'PJ-001', 'Projetor', 'Disponivel');

INSERT INTO emprestimo (id_aluno, id_equipamento, data_saida, data_devolucao_prevista) VALUES (1, 1, '2026-04-01', '2026-04-08');
INSERT INTO emprestimo (id_aluno, id_equipamento, data_saida, data_devolucao_prevista) VALUES (2, 2, '2026-04-02', '2026-04-09');

-- EX. 11 INSERT: Eventos e Participações
INSERT INTO evento (nome, data_evento, tipo, local) VALUES ('Feira de Tecnologia', '2026-05-15', 'Feira', 'Auditório Principal');
INSERT INTO evento (nome, data_evento, tipo, local) VALUES ('Visita Técnica à Empresa XYZ', '2026-06-10', 'Visita_Tecnica', 'Empresa XYZ');

INSERT INTO participacao_evento (id_turma, id_evento, confirmada) VALUES (1, 1, 1);
INSERT INTO participacao_evento (id_turma, id_evento, confirmada) VALUES (1, 2, 0);

-- EX. 12 INSERT: Ocorrências
INSERT INTO ocorrencia (id_aluno, id_professor, data_ocorrencia, tipo, descricao, resolvida) VALUES (3, 1, '2026-03-10 08:30:00', 'Atraso', 'Chegou 20 minutes atrasado', 0);
INSERT INTO ocorrencia (id_aluno, id_professor, data_ocorrencia, tipo, descricao, resolvida) VALUES (3, 2, '2026-03-18 13:00:00', 'Indisciplina', 'Uso indevido do celular durante a aula', 1);


-- ============================================================================
-- PARTE 2 — SELECT: CONSULTANDO OS DADOS
-- ============================================================================

-- EX. 13 SELECT: Buscando tudo
SELECT * FROM curso;
SELECT * FROM professor;
SELECT * FROM aluno;
SELECT * FROM disciplina;
SELECT * FROM equipamento;
SELECT * FROM evento;
SELECT * FROM ocorrencia;

-- EX. 14 SELECT: Colunas específicas
SELECT nome, data_nascimento FROM aluno;
SELECT nome, titulacao FROM professor;
SELECT nome, carga_horaria FROM disciplina;

-- EX. 15 SELECT com WHERE: Filtro simples
SELECT * FROM aluno WHERE id_turma = 1;
SELECT * FROM curso WHERE turno = 'Manha';
SELECT * FROM professor WHERE cpf = '22222222222';
SELECT * FROM equipamento WHERE status = 'Disponivel';

-- EX. 16 SELECT com WHERE: LIKE
SELECT * FROM aluno WHERE nome LIKE 'M%';
SELECT * FROM professor WHERE nome LIKE '%Costa%';
SELECT * FROM curso WHERE nome LIKE '%Técnico%';
SELECT * FROM aluno WHERE nome LIKE '%a';

-- EX. 17 SELECT com WHERE: Múltiplas condições
SELECT * FROM aluno WHERE id_turma = 1 AND (nome LIKE 'J%' OR nome LIKE 'M%');
SELECT * FROM professor WHERE data_admissao > '2020-01-01';
SELECT * FROM sala WHERE capacity > 25 AND (tipo = 'Sala_Comum' OR tipo = 'Laboratorio');
SELECT * FROM avaliacao WHERE tipo = 'Prova' AND nota > 7.0;
SELECT * FROM ocorrencia WHERE id_aluno = 3 AND resolvida = 0;

-- EX. 18 SELECT com WHERE: IN e BETWEEN
SELECT * FROM avaliacao WHERE nota BETWEEN 7.0 AND 9.0;
SELECT * FROM aluno WHERE data_nascimento BETWEEN '2005-01-01' AND '2006-12-31';
SELECT * FROM disciplina WHERE nome IN ('Banco de Dados', 'Redes de Computadores');
SELECT * FROM curso WHERE carga_horaria_total BETWEEN 1600 AND 2000;

-- EX. 19 SELECT com WHERE: IS NULL e IS NOT NULL
SELECT * FROM aluno WHERE telefone IS NULL;
SELECT * FROM emprestimo WHERE data_devolucao_real IS NOT NULL;
SELECT * FROM emprestimo WHERE data_devolucao_real IS NULL;
SELECT * FROM avaliacao WHERE nota IS NULL;

-- EX. 20 SELECT: ORDER BY e LIMIT
SELECT * FROM aluno ORDER BY nome ASC;
SELECT * FROM aluno ORDER BY data_nascimento DESC;
SELECT * FROM professor ORDER BY data_admissao DESC LIMIT 2;
SELECT * FROM disciplina ORDER BY carga_horaria DESC;
SELECT * FROM avaliacao ORDER BY nota ASC LIMIT 3;

-- EX. 21 SELECT: Filtros nas novas tabelas
SELECT * FROM ocorrencia WHERE id_aluno = 3;
SELECT * FROM emprestimo WHERE id_aluno = 1;
SELECT * FROM evento WHERE tipo = 'Feira';
SELECT * FROM participacao_evento WHERE confirmada = 1;
SELECT * FROM ocorrencia WHERE tipo IN ('Atraso', 'Indisciplina');

-- EX. 22 SELECT: Desafio — combinando tudo
SELECT nome, data_nascimento FROM aluno WHERE cpf = '44444444444';
SELECT id_aluno, tipo, nota FROM avaliacao WHERE id_disciplina = 1 AND nota >= 7.0 ORDER BY nota DESC;
SELECT * FROM equipamento WHERE status = 'Emprestado';
SELECT nome, data_evento FROM evento WHERE data_evento > '2026-05-01' ORDER BY data_evento ASC;
SELECT id_aluno FROM ficha_aluno WHERE situacao = 'Trancado';
SELECT * FROM avaliacao WHERE nota < 7.0 AND tipo = 'Prova';