class Poem
  attr_reader :title, :author, :lines
  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines].join("'")
  end
end
