
Dado(/^que eu faça requisição para alterar um "([^"]*)"$/) do |comentario|
  begin
    @index = comentario
    @response = Comments.new.update(@index)
    puts @response.body
  end
end

Então(/^valido o código de resposta para alteração esperada$/) do
  expect(@response.code).to eq 200
  puts "Validado o recebimento do código de resposta 201"
  puts @response.body
end
