class SearchController < ApplicationController
  def index
    response = Faraday.get("https://poetrydb.org/author/#{params[:author]}")

    poems = JSON.parse(response.body, symbolize_names: true)

    @poems = poems.first(10).map do |poem|
      Poem.new(poem)
    end

    text = @poems.first.lines

    conn = Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com") do |connection|
      connection.basic_auth("apikey", ENV['TONE_API_KEY'])
    end

    response1 = conn.get("/instances/514a6c59-8a4a-4074-a084-e5702412d418/v3/tone") do |f|
      f.params["version"] = "2017-09-21"
      f.params["tone_input"] = {text: text}
      f.params["text"] = text
    end

    tones = JSON.parse(response1.body, symbolize_names: true)
  end
end
