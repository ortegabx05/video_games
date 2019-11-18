class VideoGames::Game
  attr_accessor :name, :release_date, :platform
  
  @@all = []
  
 def initialize(name, date, platform)
    @name = name
    @release_date = date
    @platform = platform
    save
 end
  
 def self.all
    VideoGames::Scraper.scrape_games if @@all.empty?
    @@all
 end
  

 def save
    @@all << self
 end
  
end