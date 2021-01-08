require 'rails_helper'

describe "ToneService" do
  it "retrieves tone from given text" do
    tone = ToneService.tone_for_poem("Not at Home to Callers'Says the Naked Tree --'Bonnet due in April --'Wishing you Good Day --")

    expect(tone).to be_a(Hash)

    expect(tone).to have_key(:document_tone)
    expect(tone[:document_tone][:tones].first).to have_key(:tone_name)
    expect(tone[:document_tone][:tones].first[:tone_name]).to be_a(String)
  end
end
