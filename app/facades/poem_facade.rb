class PoemFacade
  def self.poems_by_author(author)
    poems = PoemService.poems_author(author)

    poems.first(10).map do |poem|
      tone = ToneService.tone_for_poem(poem[:lines].join(" "))

      if tone[:document_tone][:tones].first[:tone_name] != nil
        poem_tone = tone[:document_tone][:tones].first[:tone_name]
      else
        poem_tone = "none"
      end

      Poem.new(poem, poem_tone)
    end
  end
end
