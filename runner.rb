require './lib/games'
require './lib/event'

def start
  puts "Welcome to the Super Sports Games!"
  puts "Please enter the year for the current games:"
  print "> "
  year = gets.chomp

  puts "Please enter the first event of this year's games:"
  print "> "
  event = gets.chomp

  additional_games

  puts "Please enter the ages of this year's competitors:"
  print "> "
  ages = gets.chomp
end

def additional_games
  puts "Would you like to add any additional games? Enter Y or N:"
  print "> "
  answer = gets.chomp

  until answer.upcase == "Y" || answer.upcase == "N"
    puts "Please enter valid input: "
    print "> "
    answer = gets.chomp
  end

  if answer.upcase == "Y"
    puts "Please enter the next event: "
    print "> "
    new_event = gets.chomp
  end

  until answer.upcase == "N"
    answer = gets.chomp
  end
end

start

events = Event.new(event, ages)
games = Games.new(year)
