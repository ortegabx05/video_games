class VideoGames::CLI

 def call
   puts "Welcome to IGN!"
   get_games
   list_games
   user_games
 end
 
 def get_games
   @games = VideoGames::Game.all
 end
 
 def list_games
   puts "Here is a list of games for this month:"
   @games.each.with_index(1) do |game,index|
   puts "#{index}. #{game.name}"
   end
 end
 
 def user_games
   chosen_game = gets.strip.to_i
   show_details_for(chosen_game) if valid_input(chosen_game, @games)
 end
 
 def valid_input(input,data)
   input.to_i <= data.length && input.to_i > 0
 end
 
 def show_details_for(chosen_game)
   game = @games[chosen_game - 1]
   puts game.name
   puts "#{game.release_date} and #{game.platform}"
 end
 
end