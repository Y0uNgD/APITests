*** Settings ***
Resource    ../Resource/api_github.resource

*** Test Cases ***
Exemplo 01: Fazendo autenticação BEARER (Bearer Authentication)
    Dado uma conexão com a API do GitHub com AUTH
    Quando conectar com autenticação BEARER
    Então solicitar os dados do meu usuário

Exemplo 02: Consultando issues com parâmetros
    Dado uma conexão com a API do GitHub com AUTH
    Quando conectar com autenticação BEARER
    Então pesquisar issues do usuário