class Poem
  attr_reader :title, :author, :lines, :tone
  def initialize(poem, poem_tone)
    @title = poem[:title]
    @author = poem[:author]
    @lines = poem[:lines].join(" ")
    @tone = poem_tone
  end
end
