#language: pt
#encoding: utf-8

@get
Funcionalidade: Buscar comentários

Cenário: Ler todos os comentários
  Dado que eu faça requisição de leitura de todos os comentários
  Então valido o código de resposta esperado

  Cenário: Ler um comentário existente
    Dado que eu faça requisição de leitura de um comentário que já existe
    Então valido o código de resposta esperado
