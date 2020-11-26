require "httparty"
require "json"

class RandomTriviaController
  include HTTParty
  base_uri "https://opentdb.com/api.php"

  def self.parse_json(data)
    JSON.parse(data, symbolize_names: true)
  end

  def self.questions
    response = get("?amount=10")
    {
      body: parse_json(response.body)
    }
  end
end
