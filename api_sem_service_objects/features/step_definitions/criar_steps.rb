response = nil

Dado(/^que eu faça requisição de criação de um comentário$/) do
  begin
	   response = HTTParty.post("http://jsonplaceholder.typicode.com/comments/",
     :body =>  {'title'=> 'Sidao Testexxxxxx',
                'body'=> 'Tentandoxxxxxx fazer um primeiro post',
                'userId'=> 3
    }.to_json,
    :headers => {'Content-Type' => 'application/json'})
     puts response.code
  end
end

Então(/^valido o código de resposta para criação esperado$/) do
  expect(response.code).to eq 201
  puts "Validado o recebimento do código de resposta 201"
  puts response.body
end
