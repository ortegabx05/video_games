class VideoGames::Scaper
  
  def scrape_games
    
    doc = Nokogiri::HTML(open("https://www.gamestop.com/upcoming-video-games"))
    
  end
  
end