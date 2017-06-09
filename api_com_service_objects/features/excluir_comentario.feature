#language: pt
#encoding: utf-8

@delete
Funcionalidade: Excluir comentário

Esquema do Cenário: Excluir um comentário já existente com sucesso
  Dado que eu faça requisição de exclusao do "<comentario>"
  Então valido o código de resposta para exclusão esperado

  Exemplos:
    | comentario      |
    | 10              |
    | 15              |
