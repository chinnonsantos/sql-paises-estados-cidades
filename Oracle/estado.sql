--
-- Estrutura da tabela "estado"
--

drop table ESTADO cascade constraints;
drop sequence SEQ_ESTADO;
create table ESTADO (
    ID NUMBER(19) not null primary key,
    DDD VARCHAR2(50 char),
    IBGE NUMBER(10),
    NOME VARCHAR2(75 char),
    UF VARCHAR2(2 char),
    PAIS NUMBER(19) constraint FK_ESTADO_PAIS references PAIS
);
create sequence SEQ_ESTADO;

--
-- Inserindo dados na tabela "estado"
--
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Acre', 'AC', 12, 1, '68');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Alagoas', 'AL', 27, 1, '82');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Amazonas', 'AM', 13, 1, '97,92');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Amapá', 'AP', 16, 1, '96');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Bahia', 'BA', 29, 1, '77,75,73,74,71');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Ceará', 'CE', 23, 1, '88,85');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Distrito Federal', 'DF', 53, 1, '61');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Espírito Santo', 'ES', 32, 1, '28,27');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Goiás', 'GO', 52, 1, '62,64,61');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Maranhão', 'MA', 21, 1, '99,98');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Minas Gerais', 'MG', 31, 1, '34,37,31,33,35,38,32');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Mato Grosso do Sul', 'MS', 50, 1, '67');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Mato Grosso', 'MT', 51, 1, '65,66');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Pará', 'PA', 15, 1, '91,94,93');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Paraíba', 'PB', 25, 1, '83');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Pernambuco', 'PE', 26, 1, '81,87');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Piauí', 'PI', 22, 1, '89,86');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Paraná', 'PR', 41, 1, '43,41,42,44,45,46');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Rio de Janeiro', 'RJ', 33, 1, '24,22,21');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Rio Grande do Norte', 'RN', 24, 1, '84');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Rondônia', 'RO', 11, 1, '69');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Roraima', 'RR', 14, 1, '95');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Rio Grande do Sul', 'RS', 43, 1, '53,54,55,51');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Santa Catarina', 'SC', 42, 1, '47,48,49');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Sergipe', 'SE', 28, 1, '79');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'São Paulo', 'SP', 35, 1, '11,12,13,14,15,16,17,18,19');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Tocantins', 'TO', 17, 1, '63');
INSERT INTO estado (id, nome, uf, ibge, pais, ddd) VALUES (SEQ_ESTADO.nextval, 'Exterior', 'EX', 99, NULL, NULL);