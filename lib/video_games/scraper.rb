exit!
class VideoGames::Scraper
  
  def self.scrape_game
    doc = Nokogiri::HTML(open("https://www.gamestop.com/upcoming-video-games"))
  end


end