class VideoGames::Scraper
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.gamestop.com/upcoming-video-games"))
    binding.pry
  end
end
