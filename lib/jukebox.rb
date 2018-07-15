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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(arr)
  arr.each_with_index{ |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(arr)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if arr.include?(input)
    puts input
  elsif input.to_i < 10
    puts input.to_i
    puts arr[input.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end
