class VideoGames::CLI

 def call
  puts "Welcome to Gamestop!"
  get_upcoming_games
  list_games
  get_user_name
  release_date
 end
 
 def get_upcoming_games
   @upcoming_games = VideoGames::UpcomingGames.all
 end
 
 def list_games
   puts"Here is an updated list of games being released soon."
   @upcoming_games.each.with_index(1) do |game,index|
     puts "#{index}. #{game.title}"
 end
 
 def get_user_game
   chosen_game = gets.strip.to_i
   release_date(chosen_game) if valid_input(chosen_game, @upcoming_games)
 end
 
 def valid_input(input,data)
   input.to_i <= data.length && input.to_i > 0
 end
 
 def release_date(chosen_game)
   game = @upcoming_game [chosen_game - 1]
   puts "The release date is #{game}"
 end
 end
end