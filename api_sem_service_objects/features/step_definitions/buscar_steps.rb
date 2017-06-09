response = nil

Dado(/^que eu faça requisição de leitura de todos os comentários$/) do
  begin
	   response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/1")
     puts response.body
  end
end

Dado(/^que eu faça requisição de leitura de um comentário que já existe$/) do
  begin
	   response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/1")
     puts response.body
  end
end

Então(/^valido o código de resposta esperado$/) do
  expect(response.code).to eq 200
  puts "Validado o recebimento do código de resposta 200"
end
