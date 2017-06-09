#language: pt
#encoding: utf-8

@put
Funcionalidade: Alterar um comentário

Esquema do Cenário: Alterar um comentário com sucesso
  Dado que eu faça requisição para alterar um "<comentario>"
  Então valido o código de resposta para alteração esperada

  Exemplos:
    | comentario      |
    | 55              |
    | 77              |
