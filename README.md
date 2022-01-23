Desafio API: Criar um endpoint que faça a leitura de um arquivo .csv, popule o banco de dados com essas informações e com isso será necessário exibir todos os registros em json.

Requisitos:
O desafio deve ser desenvolvido utilizando Ruby e tendo o Rails como framework;
Seguindo o padrão API RESTful;
Seguir o Rubocop style-guide;
A leitura do arquivo .csv deve ser através de um endpoint diferente da listagem de títulos;
Ordenar pelo ano de lançamento;
Filtrar os registros por ano de lançamento, gênero, país*;
Garantir que não haja duplicidade de registros;
O projeto deve ser disponibilizado em um repositório aberto no GitHub. Envie a URL assim que possível;

Comentários sobre a solução apresentada:
- O id dos registros extraídos do arquivo.csv foi gerado pelo próprio Rails;
- A leitura do arquivo .csv foi realizada no seed, através do parsing;
- A gema pg_search foi instalada;
- As respostas de retorno estão ordenadas pelo ano de lançamento (year) em ordem decrescente;
- O atributo published_at foi convertido para o formato %Y-%d-%m;
- Para melhor visualização do response do endpoint utilizar a extensão do Chrome "JSON Lite", ou equivalente.
