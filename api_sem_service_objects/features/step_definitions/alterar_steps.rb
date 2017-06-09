response = nil

Dado(/^que eu faça requisição para alterar um comentário$/) do
  begin
	   response = HTTParty.put("http://jsonplaceholder.typicode.com/comments/101",
     :body =>  {'title'=> 'Testando alteração',
                'body'=> 'Tentando a realização da alteração de um post',
                'userId'=> 3
    }.to_json,
    :headers => {'Content-Type' => 'application/json'})
     puts response.code
  end
end

Então(/^valido o código de resposta para alteração esperada$/) do
  expect(response.code).to eq 200
  puts "Validado o recebimento do código de resposta 201"
  puts response.body
end
