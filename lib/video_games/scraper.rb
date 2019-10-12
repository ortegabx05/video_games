class VideoGames::Scraper
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.gamestop.com/upcoming-video-games"))
   
   title = doc.css("div#pre-release h5")
   
   title.each do |t|
   puts t.text
    end
  end
  
end
