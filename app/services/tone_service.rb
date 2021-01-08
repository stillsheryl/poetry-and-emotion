class ToneService
  def self.tone_for_poem(poem)
    conn = Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com") do |connection|
      connection.basic_auth("apikey", ENV['TONE_API_KEY'])
    end

    response = conn.get("/instances/514a6c59-8a4a-4074-a084-e5702412d418/v3/tone") do |f|
      f.params["version"] = "2017-09-21"
      f.params["tone_input"] = {text: poem}
      f.params["text"] = poem
    end

    tones = JSON.parse(response.body, symbolize_names: true)

    tones[:document_tone][:tones].first[:tone_name]
  end
end
