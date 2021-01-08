class SearchController < ApplicationController
  def index
    response = Faraday.get("https://poetrydb.org/author/#{params[:author]}")

    poems = JSON.parse(response.body, symbolize_names: true)

    @poems = poems.map do |poem|
      Poem.new(poem)
    end
  end
end
