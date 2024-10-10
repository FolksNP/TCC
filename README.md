# Patrono Neves - TCC

## Sobre o projeto:
Este projeto é uma plataforma de educação online que oferece cursos gratuitos, permitindo que os usuários adquiram conhecimentos de forma acessível e sem custo. A ideia central é tornar o conhecimento democrático e acessível a todos. Além disso, a plataforma é multiplataforma, adaptando-se a qualquer dispositivo e garantindo uma experiência extremamente eficiente, precisando apenas de uma conexão Wi-Fi para funcionar.

## Como o servidor Express + Node.js funciona

O servidor é executado na porta 8080 de localhost e através das páginas html ou php podem ser feitas requisições para este servidor, esse recurso permite com que o servidor devolva diferentes informações com base na URL que foi requisitada. atualmente esse recurso está sendo usado para registrar informações específicas no banco ou para permitir a importação de arquivos JavaScript, a fim de reutilizar códigos.

## Configurando o ambiente do projeto

- baixe uma versão do node.js
- exucute o projeto e o banco utilizando o wamp
- abra o terminal dentro da pasta do projeto 
- utilize o comando 'npm install'

## Rodando o Node.js

- abra o terminal dentro da pasta do projeto 
- execute e comando 'node .' para rodar o servidor
- para fechar o servidor utilize 'ctrl + C'

## Explicando alguns arquivos

- 'main.js' é o arquivo responsável pela criação e manutenção do servidor
- 'package.json' contém as configurações do projeto node.js, raramente é modificado 
- 'package-lock-json' contém configurações mais detalhadas sobre o projeto node.js, jamais deve ser modificado
- 'shared.js' é um módulo que exporta uma série de funções que serão usadas em muitas das páginas para a aplicação de estilos com base nas configurações do usuário
