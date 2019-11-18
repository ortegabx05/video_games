class VideoGames::CLI

 def call
   puts "\nWelcome to IGN!\n"
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
   puts "The release date is on #{game.release_date} for the following platform(s) #{game.platform}"
   puts "Would you like to choose another game? (y/n)"
   input = gets.chomp
   if input == "y" || input == "Y" 
     list_games
     user_games
   elsif input == "n" || input == "N"
     puts "Until next time!, Happy Gaming!"
   end
 end

end