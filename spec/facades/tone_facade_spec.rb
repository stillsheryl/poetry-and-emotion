require 'rails_helper'

describe "ToneFacade" do
  it "returns array of poem objects" do
    tone = ToneFacade.get_tone("Not at Home to Callers'Says the Naked Tree --'Bonnet due in April --'Wishing you Good Day --")

    expect(tone).to be_an(String)
  end
end
