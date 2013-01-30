require 'rainbow'
require 'pry'
require 'pry-debugger'

def menu
  puts `clear`
  puts "Labpartners Generator"
  print "Select: (s)ize of group or (q)uit application "
  gets.chomp.downcase
end

responce = menu

while responce != 'q'
  case responce
  when 's'
    print "What is the size of your group? "
    group_size = gets.chomp.to_i

      #array function


    print "Your group's are as follows: #{create_groups}"

  end

  responce = menu
end

students = ["Adi", "Adrian", "Alex", "Anthony", "Ben", "Brian", "Bryan", "Chloe", "Eric", "Jane", "Jeff", "Jillian", "Joe", "Luke", "Matt", "Nick", "Nicky", "Ralph", "Ron", "Ryan", "Sandip", "Sean", "Shefali", "Simon", "Stephen"]