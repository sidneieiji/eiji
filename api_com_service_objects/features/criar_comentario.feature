#language: pt
#encoding: utf-8

@post
Funcionalidade: Criar comentários

Cenário: Criar um comentário com sucesso
  Dado que eu faça requisição de criação de um comentário
  Então valido o código de resposta para criação esperado
