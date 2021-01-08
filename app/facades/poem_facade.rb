class PoemFacade
  def self.poems_by_author(author)
    poems = PoemService.poems_by_author(author)

    @poems = poems.first(10).map do |poem|
      Poem.new(poem)
    end
  end
end
