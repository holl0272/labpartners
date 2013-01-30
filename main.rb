require 'rainbow'
require 'pry'
require 'pry-debugger'

students = ["Adi", "Adrian", "Alex", "Anthony", "Ben", "Brian", "Bryan", "Chloe", "Eric", "Jane", "Jeff", "Jillian", "Joe", "Luke", "Matt", "Nick", "Nicky", "Ralph", "Ron", "Ryan", "Sandip", "Sean", "Shefali", "Simon", "Stephen"]

def create_groups(students, group_size)
  students = students.shuffle
  array_of_groups = []
  n = 0
  if (students.length % group_size == 0)
    while (n < students.length)
      array_of_groups.push(students[n..(n + group_size - 1)])
      n += group_size
    end

  else
    remainder = students.length % group_size
    while (n < students.length)
      array_of_groups.push(students[n..(n + group_size - 1)])
      n += group_size
    end
    for i in (-1..-remainder)
      array_of_groups.push(students[i])
    end
  end

for i in 0..array_of_groups.length-1
  puts array_of_groups[i].to_s
end
end

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

      create_groups(students, group_size)

    print "Your group's are as follows: #{create_groups}"

  end

  responce = menu
end
