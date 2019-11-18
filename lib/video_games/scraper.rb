class VideoGames::Scraper
  
 def self.scrape_games
  doc = Nokogiri::HTML(open("https://www.ign.com/upcoming/games"))
  games = doc.css("div.page-content div.card")

  games.each do |thing|
  name = thing.css("button.title.link").text.strip
  release_date = thing.css("div.release-date").text.strip
  platform = thing.css("div.platform").text.strip
  puts name, release_date, platform
    VideoGames::Game.new(name, release_date , platform)
   end
 end

end
