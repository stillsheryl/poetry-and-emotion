class ToneFacade
  def self.get_tone(poem)
    tone = ToneService.tone_for_poem(poem)

    tone[:document_tone][:tones].first[:tone_name]
  end
end
