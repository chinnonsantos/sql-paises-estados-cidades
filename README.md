# SQL COM TODOS OS PAÍSES (BACEN) + TODOS OS ESTADOS E CIDADES DO BRASIL (IBGE)

SQL de todos os __Países e Nações__ (c/ Código do Portal do Comércio Exterior ou BACEN) + __Estados e Federações Brasileiras__ (c/ DDD e Código do IBGE) + __Cidades e Municípios Brasileiros__ (c/ Código do IBGE), incluindo as 31 regiões administrativas do DF, Ilhas e Áreas Remotas do Mundo.

> Obs.: A tabela de Países está sofrendo atualizações na coluna do Código BACEN, priorizando o código do País através da tabela de países do **Portal do Comércio Exterior**, sendo assim em alguns casos o código **BACEN** do País está recebendo o Código do Portal de Comércio Exterior, levando em consideração que a Receita Federal está exigindo essa tabela em relação ao BACEN em seus documentos fiscais. Vide Nota Técnica 2018.003 no portal da nota fiscal eletrônica.

*Arquivos separados por tipo de ___SGBD___ em Pastas.

*Arquivos separados por tabela.

*Em breve irei incluir estados e cidades estrangeiras.

*Em breve irei incluir informações sobre latitude e longitude de cidades brasileiras.

## Como Instalar

Basta importar o arquivo SQL referente ao seu SGBD ou copie e cole o conteúdo dos arquivos SQL para o executor de queries do seu SGBD.

## Como Atualizar

Bem simples, como os arquivos SQL possui comandos de exclusão da tabela antes da criação e inserção de registros, desde que sua aplicação faça uso das tabelas da forma original igual é disponibilizado aqui, basta importar os arquivos SQL referente ao seu SGBD ou copie e cole o conteúdo dos arquivos SQL para o executor de queries do seu SGBD, isso fará com que suas tabelas sejam removidas e criadas novamente com todos os dados atualizados.

## Dicas e Sugestões de Uso

*Todos os Estados/Distritos e Cidades/Municípios Brasileiros possui um código único de identificação do IBGE, porem nem todos os Países e Nações do mundo possui um código único de identificação do BACEN, devido ao BACEN só catalogar Países dos quais ele possui ligação financeira (Agencias Bancarias ou Correspondente bancário), geralmente esses países (ou espaços governados por outras nações) são ilhas inabitadas ou regiões inabitadas próximas das Antártida, não se preocupe com isso, provavelmente sua aplicação nunca irá precisar utilizar essa localização.

*A tabela de 'pais' possui todos os Países e Nações possíveis com ou sem Sigla, ~~com ou sem Código do BACEN~~, com Nome Original e Nome Traduzido para o Português.

## Validações

### Validação do Código de Município

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

```txt
4305871 - Coronel Barros/RS;
2201919 - Bom Princípio do Piauí/PI;
2202251 - Canavieira /PI;
2201988 - Brejo do Piauí/PI;
2611533 - Quixaba/PE;
3117836 - Cônego Marinho/MG;
3152131 - Ponto Chique/MG;
5203939 - Buriti de Goiás/GO;
5203962 - Buritinópolis/GO;
```

### Validação do Código de Município - **Código TOM**
O campo **Código TOM** possui 4 dígitos e se refere ao código usado para tratamento de arquivos da Receita da Federal do Brasil (**RFB**) ou Secretarias da Fazenda (**SEFAZ**).
Arquivos do SIMPLES NACIONAL como PGDASD, DAF607 entre outros usam essa codificação.

Os dados foram extraídos do portal da SEFAZ MG:
[http://www.fazenda.mg.gov.br/governo/assuntos_municipais/codigomunicipio/](http://www.fazenda.mg.gov.br/governo/assuntos_municipais/codigomunicipio/)

> Atualmente disponível somente para **PostgreSQL**, estamos replicando a informação para outros SGDB do projeto...

### Validação do Código de País

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

```txt
1504 - GUERNSEY, ILHA DO CANAL (INCLUI ALDERNEY E SARK);
1508 - JERSEY, ILHA DO CANAL;
3595 - MAN, ILHA DE;
4985 - MONTENEGRO;
6781 - SAINT KITTS E NEVIS;
7370 - SERVIA;
```

## Contribuições

- [x] [@luizvaz](https://github.com/luizvaz) - Luiz Vaz
- [x] [@brunotdantas](https://github.com/brunotdantas) - Bruno Dantas
- [x] [@gabrielozaki](https://github.com/gabrielozaki) - Gabriel Ozaki
- [x] [@andersonls](https://github.com/andersonls) - Anderson Luiz Silvério
- [x] [@DenisonMartins](https://github.com/DenisonMartins) - Michael Denison Lemos Martins
- [x] [@volneineves](https://github.com/volneineves) - Volnei Neves
- [x] E muitos outros...

*Caso deseje contribuir com sugestões, correções ou adaptando o código SQL para outro tipo de SGBD será sempre bem-vindo, faça sempre um **_Pull Request_**.

## Fontes

- [Tabela de Países do Portal do Comércio Exterior (atualizada em 12/04/2019)](http://www.nfe.fazenda.gov.br/portal/exibirArquivo.aspx?conteudo=FOXZNFX/p50=)
- [Códigos BACEN](http://www.bcb.gov.br/rex/Censo2000/port/manual/pais.asp?idpai=censo2000inf)
- [Instruções de Preenchimento do Banco Central do Brasil - Março de 2016 - PDF](http://www.bcb.gov.br/fis/pstaw10/DLO_2061_e_2071_instrucoesComplementares_ACP_v201603.pdf)
- [Áreas dos Municípios do Brasil (vigente em 30/04/2018)](https://www.ibge.gov.br/geociencias/organizacao-do-territorio/estrutura-territorial/15761-areas-dos-municipios.html?=&t=o-que-e)
- [Código IBGE das Unidade da Federação e Municípios do Brasil - 2018 - XLS](//geoftp.ibge.gov.br/organizacao_do_territorio/estrutura_territorial/areas_territoriais/2018/AR_BR_RG_UF_MES_MIC_MUN_2018.xls)
- [Panorama IBGE dos Municípios do Brasil](https://cidades.ibge.gov.br/brasil/go/goiania/panorama)
