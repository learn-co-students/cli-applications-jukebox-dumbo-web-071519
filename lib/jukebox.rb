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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index +1}. #{song}"}
end

def play(songs)
 puts "Please enter a song name or number:"
 userInput = gets.chomp
 if userInput.to_i >= 1 && userInput.to_i <= songs.length 
   puts "Now Playing #{songs[userInput.to_i-1]}"
   elsif songs.include?(userInput)
   puts "Playing #{songs.find{|song| song == userInput}}."
   else
    puts "Invalid input, please try again"
  end
end

def run(songs)
  help
  while true do
  puts "Please enter a command:"
  command = gets.chomp
  case command
     when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end