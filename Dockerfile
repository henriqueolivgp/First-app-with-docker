#Comandos obrigatorios

#Baixa a imagem do node com versao alpine (versao mais simplificada e leve)

FROM node:alpine

#Estabelece o local onde o app ficara no container

#Tambem pode incluir em qualquer outro diretorio

WORKDIR /app

#Toda instrucäo que cameca com package e termina com .json inserir na pasta /app

COPY package*.json ./

#Executa npm install para adicionar as dependéncias e criar a pasta node_modules

RUN npm install

#Toda a instrucäo que estå no diretörio do arquivo Dockerfile, move para a pasta /usr/app do container

##vamos ignorar a node_mdules por isso criaremos um .dockerignore

COPY . .

##container ficarå a escutar os acessos na porta 3øøe

EXPOSE 3000

## Näo se repete no Dockerfile
##executa o comando npm start para iniciar o script que que estå no package.json

CMD npm start