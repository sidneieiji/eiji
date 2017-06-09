class Comments

  include HTTParty

  base_uri "http://jsonplaceholder.typicode.com"

  def create
    self.class.post("/comments/",
    :body =>  {'title'=> 'Teste Criando Comentario',
               'body'=> 'Tentando fazer um primeiro comentário',
               'userId'=> 3
   }.to_json,
   :headers => {'Content-Type' => 'application/json'})
  end

  def get(index=nil)
    self.class.get("/comments/#{index}")
  end

  def update(index=nil)
    self.class.put("/comments/#{index}",
    :body =>  {"title"=> "Teste Alterando o Comentário #{index}",
               "body"=> "Tentando fazer uma alteração num comentário existente",
               "userId"=> 3
   }.to_json,
   :headers => {'Content-Type' => 'application/json'})
  end

  def delete(index=nil)
    self.class.delete("/comments/#{index}")
  end

end
