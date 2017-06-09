#language: pt
#encoding: utf-8

@delete
Funcionalidade: Excluir comentário

Cenário: Excluir um comentário já existente com sucesso
  Dado que eu faça requisição de exclusão de um comentário
  Então valido o código de resposta para exclusão esperado
