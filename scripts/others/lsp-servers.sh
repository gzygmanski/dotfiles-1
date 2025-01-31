#!/bin/sh

npm install -g eslint
npm install -g prettier

npm install -g bash-language-server
npm install -g vscode-css-languageserver-bin
npm install -g dockerfile-language-server-nodejs
npm install -g graphql-language-service-cli
npm install -g vscode-html-languageserver-bin
npm install -g typescript typescript-language-server
npm install -g vscode-json-languageserver
npm install -g pyright
npm install -g vim-language-server
npm install -g yaml-language-server

luarocks install --server=https://luarocks.org/dev luaformatter
