songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end 
end


def play (songs) 
  puts "Please enter a song name or number:"
  answer = gets.chomp 
    songs.each_with_index do |song,index|
      
      if answer == (index+1).to_s || answer == song.to_s
        break puts "Playing #{song}" 
      else  
        puts "Invalid input, please try again"
      end 
    end
end 


def exit_jukebox 
  puts "Goodbye"
end 

def run (songs)
  help
  puts "Please enter a command:"
  user_response = gets.strip
  while true
     
    case user_response
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
       break exit_jukebox
    end
    puts "Please enter a command:"
    user_response = gets.strip
  end 
end 
  
