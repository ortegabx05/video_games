class VideoGames::CLI

 def call
  puts "IGN!"
  #get_advertised_months
  #get_user_months
  #get_games_for(month) 
  #list_games
  #get_release_date
 end
 
 def get_months
   @months = []
 end
 
 def user_months
    @months.each.with_index(1) do |month,index|
     puts "#{index}. #{month}
 end
   
