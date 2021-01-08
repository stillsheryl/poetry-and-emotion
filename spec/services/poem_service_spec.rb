require 'rails_helper'

describe "PoemService" do
  it "retrieves tone from given text" do
    poems = PoemService.poems_author("Emily")

    expect(poems).to be_a(Array)

    poem = poems.first
    expect(poem).to be_a(Hash)
    expect(poem).to have_key(:title)
    expect(poem).to have_key(:author)
    expect(poem).to have_key(:lines)
  end
end
