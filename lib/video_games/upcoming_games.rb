class VideoGames::UpcomingGames
  @@all = []
  attr_accessor :title :url
  
  def initialize(title)
    @title = title
    save
  end
  
  def self.all
    VideoGames::Scaper.scrape_game if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
end