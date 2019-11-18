require_relative "video_games/version"
require_relative "video_games/cli"
require_relative "video_games/game"
require_relative "video_games/scraper"


require 'pry'
require 'nokogiri'
require 'open-uri'

module VideoGames
  class Error < StandardError; end
  # Your code goes here...
end
