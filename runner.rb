require './lib/games'
require './lib/event'

puts "Welcome to the Super Sports Games!"
puts "Please enter the year for the current games:"
print "> "
year = gets.chomp
games = Games.new(year)

def start
  puts "What would you like to do?"
  puts "Enter 'A' to add an event."
  puts "Enter 'S' to get a summary of the events."
  puts "Enter 'Q' to quit."
  print "> "
  answer = gets.chomp.downcase

  until answer == "a" || answer == "s" || answer == "q"
    valid_input
    answer = gets.chomp.downcase
    if answer == "a"
      add_event
    else answer == "q"
      break
    else answer == "s"
      summary
    end
  end


end

def add_event
  ages = []
  puts "Please enter the event: "
  print "> "
  event = gets.chomp
  ages << event
end

def valid_input
  puts "Please enter a valid input"
  print "> "
end

def summary


start

events = Event.new(event, ages)
