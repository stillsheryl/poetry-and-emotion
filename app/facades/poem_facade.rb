class PoemFacade
  def self.poems_by_author(author)
    poems = PoemService.poems_author(author)

    poems.first(10).map do |poem|
      Poem.new(poem)
    end
  end
end
