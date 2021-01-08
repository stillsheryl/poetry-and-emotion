class Poem
  attr_reader :title, :author, :lines, :tone
  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines].join("")
    @tone = ToneFacade.get_tone(@lines)
  end
end
