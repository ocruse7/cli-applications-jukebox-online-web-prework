require "pry"

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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if choice.to_i >= 1 && choice.to_i <= songs.length
    puts "Playing #{songs[choice.to_i-1]}"
  elsif songs.include?(choice)
    puts "Playing #{songs.find {|song| choice == song}}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
  exit
end