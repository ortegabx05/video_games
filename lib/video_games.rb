require_relative "video_games/version"
require_relative "video_games/cli"
require_relative "video_games/upcoming_games"
require_relative "video_games/scraping"

require 'pry'
require 'nokogiri'
require 'open-uri'

module VideoGames
  class Error < StandardError; end
  # Your code goes here...
end
