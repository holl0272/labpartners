require 'rainbow'
require 'pry'
require 'pry-debugger'

students = ["Adi", "Adrian", "Alex", "Anthony", "Ben", "Brian", "Bryan", "Chloe", "Eric", "Jane", "Jeff", "Jillian", "Joe", "Luke", "Matt", "Nick", "Nicky", "Ralph", "Ron", "Ryan", "Sandip", "Sean", "Shefali", "Simon", "Stephen"]
students = students.shuffle



    print "What is the size of your group? "
    group_size = gets.chomp.to_i

  num_of_groups = students.count / group_size

  num_of_groups.times do |group_num|
    puts "\n\nGroup #{group_num}:"
    print "#{students.pop(group_size).join(', ')}"
  end
  puts ", #{students.join(', ')}" if students.any?


