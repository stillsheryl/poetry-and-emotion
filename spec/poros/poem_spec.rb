require 'rails_helper'

describe "Poem" do
  it "creates a Poem object" do
    params = {
      :title=>"Not at Home to Callers",
      :author=>"Emily Dickinson",
      :lines=>["Not at Home to Callers", "Says the Naked Tree --", "Bonnet due in April --", "Wishing you Good Day --"],
      :linecount=>"4"}

    poem = Poem.new(params)

    expect(poem).to be_a(Poem)
    expect(poem.title).to be_a(String)
    expect(poem.author).to be_a(String)
    expect(poem.lines).to be_an(Array)
  end
end
