require 'rails_helper'

describe "ToneService" do
  it "retrieves tone from given text" do
    tone = ToneService.tone_for_poem("Not at Home to Callers'Says the Naked Tree --'Bonnet due in April --'Wishing you Good Day --")

    expect(tone).to be_a(String)
  end
end
