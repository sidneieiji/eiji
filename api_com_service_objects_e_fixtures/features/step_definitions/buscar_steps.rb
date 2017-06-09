Dado(/^que eu faça requisição de leitura de todos os comentários$/) do
  begin
	   @response = Comments.new.get(@index)
     puts @response.body
  end
end

Dado(/^que eu faça requisição de leitura de um "([^"]*)"$/) do |comentario|
  begin
   @index = comentario
   @response = Comments.new.get(@index)
   puts @response.body
  end
end
#Dado(/^que eu faça requisição de leitura desdfsdfsd um comentário"([^"]*)") do |comentario|

#end

Então(/^valido o código de resposta esperado$/) do
  expect(@response.code).to eq 200
  puts "Validado o recebimento do código de resposta 200"
end
