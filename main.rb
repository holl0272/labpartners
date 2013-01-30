require 'pry'
require 'pry-debugger'

students = ["Ben", "Eric", "Ryan", "Tony", "Joe"]
group_size = 3

def create_groups(students, group_size)
  students.shuffle
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


