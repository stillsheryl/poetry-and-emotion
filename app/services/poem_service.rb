class PoemService
  def self.poems_author(author)
    response = Faraday.get("https://poetrydb.org/author/#{author}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
