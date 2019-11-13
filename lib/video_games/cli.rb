class VideoGames::CLI

 def call
   puts "Welcome to IGN!"
   get_months
   list_months
   user_months
 end
 
 def get_months
   @months = VideoGames::Month.all
 end
 
 def list_months
   puts "Here is a list of games for this month:"
   @months.each.with_index(1) do |month,index|
   puts "#{index}. #{month.name}"
   end
 end
 
 def user_months
   chosen_month = gets.strip.to_i
   show_games_for(chosen_month) if valid_input(chosen_month, @months)
 end
 
 def valid_input(input,data)
   input.to_i <= data.length && input.to_i > 0
 end
 
 def show_games_for(chosen_months)
   month = @months[chosen_months - 1]
   month.get_games
   puts "The following game will be released on"
   month.games.each.with_index(1) do |game,idx|
  puts "#{idx}. #{game.name}"
   end
 end
 
end