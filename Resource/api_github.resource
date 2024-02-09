*** Settings ***
Library            RequestsLibrary
Library            Collections

Documentation      https://github.com/settings/tokens?type=beta

*** Variables ***
${BEARER}             # Seu Token Bearer
${GITHUB_HOST}        https://api.github.com
${USER_URI}           /user
${ISSUES_URI}         /repos/${OWNER}/${REPO}/issues
${OWNER}              # Nome do dono do repositório
${REPO}               # Nome do repositório

*** Keywords ***
Dado uma conexão com a API do GitHub com AUTH
    ${HEADERS}    Create Dictionary   Accept=application/vnd.github+json    Authorization=Bearer ${BEARER}    X-GitHub-Api-Version=2022-11-28
    Set Test Variable    ${HEADERS}

Quando conectar com autenticação BEARER
    Create Session    mygithubAuth    ${GITHUB_HOST}    ${HEADERS}    disable_warnings=True

Então solicitar os dados do meu usuário
    ${MY_USER_DATA}    GET On Session    mygithubAuth    ${USER_URI}
    Log                Meus dados: ${MY_USER_DATA.json()}

Então pesquisar issues do usuário
    ${MY_ISSUES}     GET On Session    mygithubAuth    ${ISSUES_URI}
    Log              Lista de Issues: ${MY_ISSUES.json()}