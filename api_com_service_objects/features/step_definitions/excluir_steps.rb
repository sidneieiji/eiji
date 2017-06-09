
Dado(/^que eu faça requisição de exclusao do "([^"]*)"$/) do |comentario|
  begin
   @index = comentario
   @response = Comments.new.delete(@index)
  end
end


Então(/^valido o código de resposta para exclusão esperado$/) do
  expect(@response.code).to eq 200
  puts "Validado o recebimento do código de resposta 200"
  puts "Excluído o comentário #{@index}"
end
