require "pry"
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
  new_songs=[]
  songs.each_with_index do | song, index|
    # new_songs << "#{index + 1}. #{song}"
    puts "#{index + 1}. #{song}"
  end
  # new_songs.each do | e |
  #   puts e
  #   # binding.pry
  # end
    
end
# list(songs)

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  
  songs.each_with_index do | song, index|
    if input == song || input.to_i == index + 1
      puts "Playing #{song}"
    
    end 
  end 
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  i = 0 
  while i == 0 
  puts "Please enter a command:"
  input = gets.strip
  case input
    when 'exit'
      exit_jukebox
      break
    when 'help'
      help
    when 'play'
      play(songs)
    when 'list'
      list(songs)
    end 
  end
    
  
  
end 
  