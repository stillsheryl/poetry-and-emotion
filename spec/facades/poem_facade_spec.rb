require 'rails_helper'

describe "PoemFacade" do
  it "returns array of poem objects" do
    poems = PoemFacade.poems_by_author("Emily")

    expect(poems).to be_an(Array)
    expect(poems.count).to eq(10)
  end
end
