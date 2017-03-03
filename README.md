# SQL com Todos os Países + Todos os Estados e Cidades Brasileiras
SQL de Tabelas com Registros de Todos os Países e Nações (c/ Código BACEN) + Estados e Federações (c/ DDD e Código do IBGE) Brasileiros + Cidades e Municípios (c/ Código do IBGE) Brasileiros, incluindo as 31 regiões administrativas do DF, Ilhas e Áreas Remotas do Mundo.

*Arquivos separados por tipo de SGBD em Pastas.

*Arquivos separados por tabela.

*Em breve irei incluir estados e cidades estrangeiras.

## Como Instalar (Para quem nunca utilizou o projeto...)

Basta importar o arquivo SQL referente ao seu SGBD ou copie e cole o conteúdo dos arquivos SQL para o executor de queries do seu SGBD.

## Como Atualizar (Para quem já faz uso do projeto...)

Bem simples, como os arquivos SQL possui comandos de exclusão da tabela antes da criação e inserção de registros, desde que sua aplicação faça uso das tabelas da forma original igual é disponibilizado aqui, basta importar os arquivos SQL referente ao seu SGBD ou copie e cole o conteúdo dos arquivos SQL para o executor de queries do seu SGBD, isso fará com que suas tabelas sejam removidas e criadas novamente com todos os dados atualizados.

## Dicas e Sugestões de Uso

*Todos os Estados/Distritos e Cidades/Municípios Brasileiros possui um código único de identificação do IBGE, porem nem todos os Países e Nações do mundo possui um código único de identificação do BACEN, devido o BACEN só catalogar Países dos quais ele possui ligação financeira (Agencias Bancarias ou Correspondente bancário), geralmente esses países (ou espaços governados por outras nações) são ilhas inabitadas ou regiões inabitadas próximas das Antártida, não se preocupe com isso, provavelmente sua aplicação nunca irá precisar utilizar essa localização. 

*A tabela de 'pais' possui todos os Países e Nações possíveis com ou sem Sigla, com ou sem Código do BACEN e com Nome Original e o Nome Traduzido para o Português.

## Validações

#### Validação do Código de Município

O Código de Município do IBGE tem a composição que segue:
- Composição: UUNNNND
Onde:
UU = Código da UF do IBGE
NNNN = Número de ordem dentro da UF;
D = Dígito de Controle módulo 10

Validação possível:
- Extensão máxima: 7 dígitos;
- Extensão mínima: 7 dígitos;
- Código da UF: deve ser válido, conforme Tabela de UF do IBGE;
- Número de ordem dentro da UF: não pode ser zero;
- Dígito de Controle: módulo 10 (pesos 2 e 1)

Obs 1: Considerar a soma dos algarismos no somatório dos produtos dos pesos. Ou seja, se o produto for superior a 9 os dois algarismos devem ser somados.

Obs 2: Se o resto da divisão for zero, considerar o dígito verificador igual a zero.

O código de Município do IBGE dos seguintes Municípios tem o DV - dígito verificador inválido:
- 4305871 - Coronel Barros/RS;
- 2201919 - Bom Princípio do Piauí/PI;
- 2202251 - Canavieira /PI;
- 2201988 - Brejo do Piauí/PI;
- 2611533 - Quixaba/PE;
- 3117836 - Cônego Marinho/MG;
- 3152131 - Ponto Chique/MG;
- 5203939 - Buriti de Goiás/GO;
- 5203962 - Buritinópolis/GO;

#### Validação do Código de País

Composição do Código de País:
- NNND
Onde:
NNN = Número de ordem do Código do País;
D = Dígito de Controle módulo 11.

Validação possível:
- Extensão máxima: 4 dígitos;
- Extensão mínima: 2 dígitos;
- Dígito de Controle: módulo 11, pesos 2 a 9

Obs.: Se o resto da divisão for zero ou 1, considerar o dígito verificador igual a zero.

O código de País do BACEN dos seguintes países tem o DV - dígito verificador inválido:
- 1504 - GUERNSEY, ILHA DO CANAL (INCLUI ALDERNEY E SARK);
- 1508 - JERSEY, ILHA DO CANAL;
- 4525 - MADEIRA, ILHA DA;
- 3595 - MAN, ILHA DE;
- 4985 - MONTENEGRO;
- 6781 - SAINT KITTS E NEVIS;
- 7370 - SERVIA;

## Contribuições

- [x] [@gtorrezani](https://github.com/gtorrezani) - Gustavo Torrezani Mathias
- [ ] [@denisdemais](https://github.com/denisdemais) - Denis

*Caso deseje contribuir com sugestões, correções ou adaptando o código sql para outro tipo de SGBD será sempre bem vindo, sempre faça um Pull Request das suas contribuições.

# Fontes 

- [x] [Códigos BACEN](http://www.bcb.gov.br/rex/Censo2000/port/manual/pais.asp?idpai=censo2000inf)
- [x] [Instruções de Preenchimento do Banco Central - Março de 2016 - PDF](http://www.bcb.gov.br/fis/pstaw10/DLO_2061_e_2071_instrucoesComplementares_ACP_v201603.pdf)