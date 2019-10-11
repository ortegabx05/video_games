  class VideoGames::UpcomingGames
  
attr_accessor :title, :url
  
    @@all = []
  
  def initialize(title)
    @title = title
    @url = url
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