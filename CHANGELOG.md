# CHANGELOG

## v1.2.4 - 05/08/2019

- Update README e CHANGELOG.
- Padronização dos nomes de colunas (remoção de prefixos).
- Atualizar a tabela de países usada na NF-e e harmonizá-la com a tabela de Países utilizadas pelo Portal do Comércio Exterior, de forma a permitir o correto funcionamento da Declaração Única de Exportação (DU-E).

## v1.2.3 - 12/12/2018

- Remoção do País Coletividade de São Bartolomeu 3598.
- Alteração do Código BACEN do País Ilha de São Martinho de 3604 p/ 6998.
- Remoção do País São Martinho (Países Baixos) 3606.

## v1.2.2 - 02/07/2018

- Remoção do País Wake, Ilha com código 8737.
- Remoção do País Madeira, Ilha da com código 4525.
- Remoção do País Lebuan, Ilhas com código 4235.
- Remoção do País Johnston, Ilhas com código 3964.
- Remoção do País Canarias, Ilhas com código 1511.
- Remoção do País Antilhas Holandesas com código 477.
- Inclusão do País Território das Terras Austrais e Antárcticas Francesas com código 7811.
- Inclusão do País Ilha de São Martinho com código 6980.
- Inclusão do País Colectividade de São Bartolomeu com código 6939.
- Inclusão do País Ilha Herad e Ilhas Macdonald com código 3433.
- Inclusão da região Antartica com código 420.
- Inclusão do País Bonaire com código 990.
- Alteração do Código BACEN do País Svalbard e Jan Mayen de 3605 p/ 7552.
- Alteração do Código BACEN do País Ilhas Geórgia do Sul e Sandwich do Sul de 3602 p/ 2925.
- Alteração do Código BACEN do País Ilha Bouvet de 3600 p/ 1023.
- Alteração do Código BACEN do País Ilhas de Aland de 3597 p/ 153.
- Alteração do Código BACEN do País Mayotte (Ilhas Francesas) de 4885 p/ 4898.
- Alteração do Código BACEN do País Jersey, Ilha do Canal de 1508 p/ 3930.
- Alteração do Código BACEN do País Guernsey, Ilha do Canal (Inclui Alderney e Sark) de 1504 p/ 3212.
- Alteração do Código BACEN do País Curaçao de 3601 p/ 2003.
- Alteração do Nome (PT) do País Coveite p/ Kuwait (Código BACEN 1988).
- Atualização dos país priorizando o código do País através da tabela de países do portal do comércio exterior.

## v1.2.1 - 03/03/2017

- Teste de execução no MySQL do arquivo pais.sql após atualização.
- Alterado o código ISO do Páis East Timor - Timor Leste para TL, de acordo com o formulário oficial da Organização Internacional de Normalização (ISO).
- Atualizado os dados do País Yugoslavia - Iugoslávia, República Fed. da - SIGLA YU - BACEN 3883.
- Inclusão do Código BACEN dos seguintes Países: Heard and Mc Donald Islands - 3603, French Southern Territories - 3607, Reunion - 6602, South Georgia and the South Sandwich Islands - 3602, Antarctica - 3596, Svalbard and Jan Mayen Islands - 3605, United States Minor Outlying Islands - 18664, Wallis and Futuna Islands - 8753 e Bouvet Island 3600.
- Alterado a estrutura da coluna SL_BACEN na tabela PAIS, para suportar o código BACEN de 5 digitos, ex: United States Minor Outlying Islands (18664).
- Inclusão de Ilha no Mar do Caribe: Sint Maarten (Dutch part) - São Martinho (Países Baixos) - BACEN 3606 - SIGLA SX (Issue 2).
- Inclusão de Ilha no Mar do Caribe: Saint Martin - Ilha de São Martinho (França) - BACEN 3604 - SIGLA MF (Issue 2).
- Inclusão de Ilha do Mar do Caribe: Curaçao - Curaçao - BACEN 3601 - SIGLA CW (Issue 2).
- Inclusão do território da França: Saint Barthélemy - Coletividade de São Bartolomeu - BACEN 3598 - SIGLA BL (Issue 2).
- Inclusão de Ilha Finlandesa: Åland Islands - Ilhas de Aland - BACEN 3597 - SIGLA AX (Issue 2).
- Issues 1 Fixed.
- Atualização do README para remoção de informações do Changelog.

## v1.1.0 - 27/04/2016

- Atualização do README e Commit das Alterações até a data.
- Criado um arquivo para CHANGELOG.
- Otimização de Colunas das Tabelas, removendo duplicidades, cidades fantasmas e espaço em branco no início e final dos nomes.
- Tradução dos Nomes de Países com referência do BACEN, Wikipédia e Google.
- Incluído o Código de Identificação Único das Cidades e Municípios com referência do IBGE (Instituto Brasileiro de Geografia e Estatística).
- Incluído o Código de Identificação Único dos Estados e Distritos com referência do IBGE (Instituto Brasileiro de Geografia e Estatística).
- Incluído o Código de Identificação Único dos Países com referência do BACEN (Banco Central do Brasil).
- Separado as tabelas por arquivo.
- Reorganizado os arquivos em pastas por tipo de SGBD.

## v1.0.0 - 25/03/2016

- Incluído a versão completa para MySQL por Chinnon Santos.
