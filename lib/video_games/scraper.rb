class VideoGames::Scraper
  
 def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.ign.com/upcoming/games"))
    games = doc.css("button.jsx-3959444234.title.link")
    games.each do |m|
    name = m.text
    VideoGames::Game.new(name, "Nov 16", "android")
   end
 end


# def self.scrape_games(month)
#   doc = Nokogiri::HTML(open("https://www.ign.com/upcoming/games"))
#     games = doc.css("div.jsx-3959444234.platform")
#     games.each do |g|
#     name = g.text
#     VideoGames::Games.new(name,month)
#   end
# end
  
end