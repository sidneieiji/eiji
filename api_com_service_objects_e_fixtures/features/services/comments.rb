class Comments

  include HTTParty

  base_uri "http://jsonplaceholder.typicode.com"
  format :json

  attr_reader :request_body

  def initialize
    @request_body = (YAML.load_file('./fixtures/comments_body.yml'))
  end

  def create(title, body, userId)
    #binding.pry
    json = self.request_body["post_comments_json"]
    #binding.pry
    json["title"] = title
    json["body"] = body
    json["userId"] = userId.to_s    
    self.class.post("/comments/", :headers => {'Content-Type' => 'application/json'}, :body =>  json.to_json
    )
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
