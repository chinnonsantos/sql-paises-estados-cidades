--
-- Estrutura da tabela "estado"
--

DROP TABLE IF EXISTS "estado";
CREATE TABLE "estado" (
  "UF_ID"       integer NOT NULL PRIMARY KEY,
  "UF_NOME"     varchar(60),
  "UF_SIGLA"    varchar(2),
  "UF_IBGE"     integer,
  "UF_PAIS"     integer,
  "UF_DDD"      json
);

COMMENT ON TABLE estado
  IS 'Unidades Federativas';

--
-- Inserindo dados na tabela "estadox"
--

INSERT INTO "estado" ("UF_ID", "UF_NOME", "UF_SIGLA", "UF_IBGE", "UF_PAIS", "UF_DDD") VALUES
(1, 'Acre', 'AC', 12, 1, '[68]'),
(2, 'Alagoas', 'AL', 27, 1, '[82]'),
(3, 'Amazonas', 'AM', 13, 1, '[97,92]'),
(4, 'Amapá', 'AP', 16, 1, '[96]'),
(5, 'Bahia', 'BA', 29, 1, '[77,75,73,74,71]'),
(6, 'Ceará', 'CE', 23, 1, '[88,85]'),
(7, 'Distrito Federal', 'DF', 53, 1, '[61]'),
(8, 'Espírito Santo', 'ES', 32, 1, '[28,27]'),
(9, 'Goiás', 'GO', 52, 1, '[62,64,61]'),
(10, 'Maranhão', 'MA', 21, 1, '[99,98]'),
(11, 'Minas Gerais', 'MG', 31, 1, '[34,37,31,33,35,38,32]'),
(12, 'Mato Grosso do Sul', 'MS', 50, 1, '[67]'),
(13, 'Mato Grosso', 'MT', 51, 1, '[65,66]'),
(14, 'Pará', 'PA', 15, 1, '[91,94,93]'),
(15, 'Paraíba', 'PB', 25, 1, '[83]'),
(16, 'Pernambuco', 'PE', 26, 1, '[81,87]'),
(17, 'Piauí', 'PI', 22, 1, '[89,86]'),
(18, 'Paraná', 'PR', 41, 1, '[43,41,42,44,45,46]'),
(19, 'Rio de Janeiro', 'RJ', 33, 1, '[24,22,21]'),
(20, 'Rio Grande do Norte', 'RN', 24, 1, '[84]'),
(21, 'Rondônia', 'RO', 11, 1, '[69]'),
(22, 'Roraima', 'RR', 14, 1, '[95]'),
(23, 'Rio Grande do Sul', 'RS', 43, 1, '[53,54,55,51]'),
(24, 'Santa Catarina', 'SC', 42, 1, '[47,48,49]'),
(25, 'Sergipe', 'SE', 28, 1, '[79]'),
(26, 'São Paulo', 'SP', 35, 1, '[11,12,13,14,15,16,17,18,19]'),
(27, 'Tocantins', 'TO', 17, 1, '[63]'),
(99, 'Exterior', 'EX', 99, NULL, NULL);

--
-- AUTO_INCREMENT for table "pais"
--
CREATE SEQUENCE public."estado_seq";

ALTER TABLE public.estado
  ALTER COLUMN "UF_ID"
  TYPE BIGINT;

ALTER TABLE public.estado
  ALTER COLUMN "UF_ID"
  SET DEFAULT nextval('"estado_seq"'::text);
  
ALTER SEQUENCE public.estado_seq
  RESTART 99;
