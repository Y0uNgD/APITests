<h1 align="center">Automation GIT API</h1>

<i><h4 align="center">Dois códigos básicos demonstrando conexão com a API do GitHub para consulta de usuários utilizando o método de autenticação "Bearer Token"</h4></i>

<i>OBS: É necessário atribuir valores as variáveis "${BEARER}", "${OWNER}" e "${REPO}" para que todos os testes lhe concedam sucesso.</i>

<p align="center">
 <img alt="Exemplo código feito" src="https://github.com/Y0uNgD/APITests/blob/master/code-example.png" height="120">
</p>

### Executando a Suíte

Execute o seguinte comando no terminal:

```sh
robot -d .\Results Test\api_github.robot
```

<i>Após o termino do teste da suíte, abra o arquivo "log.html" para obter os dados.</i>

### Executando teste único

Para executar um caso de teste específico, execute o seguinte comando no terminal:

```sh
robot -d .\Results -t "{Nome Test Case}" Test\api_github.robot
```

<i>Após o termino do teste da suíte, abra o arquivo "log.html" para obter os dados.</i>