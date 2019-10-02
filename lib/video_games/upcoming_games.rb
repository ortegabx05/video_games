class VideoGames::UpcomingGames
  @@all = []
  attr_accessor :title :url
  
  def initialize(title)
    @title = title
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end