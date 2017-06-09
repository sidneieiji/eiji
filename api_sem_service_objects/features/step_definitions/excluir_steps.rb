response = nil

Dado(/^que eu faça requisição de exclusão de um comentário$/) do
  begin
	   response = HTTParty.delete("http://jsonplaceholder.typicode.com/comments/99")
     puts response.code
  end
end

Então(/^valido o código de resposta para exclusão esperado$/) do
  expect(response.code).to eq 200
  puts "Validado o recebimento do código de resposta 201"
  puts response.body
end
