
Dado(/^que eu faça requisição de criação de um comentário$/) do
  begin
    @response = Comments.new.create(@title, @body, @userId)
    puts @response.body
    puts @response.code
  end
end

Então(/^valido o código de resposta para criação esperado$/) do
    expect(@response.code).to eq 201
    puts "Validado o recebimento do código de resposta 201"
    puts @response.body
end
