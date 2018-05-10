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
  help_intro = "I accept the following commands:"
  help_command = "- help: displays this help message"
  list_command = "- list: displays a list of songs you can play"
  play_command = "- play: leys you choose a song to play"
  exit_command = "- exit: exits this program"
  puts help_intro, help_command, list_command, play_command, exit_command
end

def play(songs)
  prompt = "Please enter a song name or number:"
  puts prompt 
  user_input = gets.chomp
  song_name = ""
  
  
  
  if user_input.to_i == 0 && songs.include?(user_input)
    song_name = user_input
    puts "Playing #{song_name}"
    return song_name
  elsif user_input.to_i != 0 && user_input.to_i < songs.length
    song_name = songs[(user_input.to_i)-1]
    puts "Playing #{song_name}"
    return song_name
  else 
    puts "Invalid input, please try again"
  end 
=begin 
  begin 
  integer_test = Integer(user_input.gsub(/[A-Za-z]+/i, ''))
  if songs.any?(songs[integer_test-1])
    user_input = integer_test
    if user_input > 0 && user_input <= songs.length && songs.any?(songs[user_input-1])
      song_name = songs[user_input-1]
      puts "Playing #{song_name}"
      return song_name
    end 
  end
  
  rescue 
    if user_input.class == String && songs.include?(user_input)
      song_name = user_input
      puts "Playing #{song_name}"
      return song_name
    else 
      puts "Invalid input, please try again"
    end 
  end 
=end   
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts (index+1).to_s + ". #{song}"
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  help 
  command_message = "Please enter a command:"
  puts command_message
  user_input = gets.chomp 
  
  case user_input
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  when "exit"
    exit
  end 
  
  until user_input == "exit" do 
    puts command_message
  end 
  
end 