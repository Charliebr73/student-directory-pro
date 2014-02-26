def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit return twice."
  # crate an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {:name => name, :cohort => :February}
    puts "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

=begin
students = [
  {:name => "Mario Gintili", :cohort => :february, :cob => :uk},
  {:name => "Mikhail Dubov", :cohort => :february, :cob => :uk},
  {:name => "Karolis Noreika", :cohort => :february, :cob => :uk},
  {:name => "Michael Sidon", :cohort => :february, :cob => :uk},
  {:name => "Charles De Barros", :cohort => :february, :cob => :uk},
  {:name => "Ruslan Vikhor", :cohort => :february, :cob => :uk},
  {:name => "Toby Retallick", :cohort => :february, :cob => :uk},
  {:name => "Mark Mekhaiel", :cohort => :february, :cob => :uk},
  {:name => "Sarah Young", :cohort => :february, :cob => :uk},
  {:name => "Hannah Wight", :cohort => :february, :cob => :uk},
  {:name => "Khushkaran Singh", :cohort => :february, :cob => :uk},
  {:name => "Rick Brunstedt", :cohort => :february, :cob => :uk},
  {:name => "Manjit Singh", :cohort => :february, :cob => :uk},
  {:name => "Alex Gaudiosi", :cohort => :february, :cob => :uk},
  {:name => "Ross Hepburn", :cohort => :february, :cob => :uk},
  {:name => "Natascia Marchese", :cohort => :february, :cob => :uk},
  {:name => "Tiffanie Chia", :cohort => :february, :cob => :uk},
  {:name => "Matthew Thomas", :cohort => :february, :cob => :uk},
  {:name => "Freddy McGroarty", :cohort => :february, :cob => :uk},
  {:name => "Tyler Rollins", :cohort => :february, :cob => :uk},
  {:name => "Richard Curteis", :cohort => :february, :cob => :uk},
  {:name => "Anna Yanova", :cohort => :february, :cob => :uk},
  {:name => "Andrew Cumine", :cohort => :february, :cob => :uk}
]
=end

def print_header
	puts "The Students of my Cohort at Makers Academy"
	puts "-------------"
end

def print(students)
	students.each_with_index do |student, index| # .each_with_index adds numbers to the front each item in the rash
		# puts "#{index+1}: #{student[:name]} (#{student[:cohort]} cohort)"
		if student[:name].length < 12
			puts "#{student[:name]} "
		else
			puts nil
		end
	end
end

def print_footer(names)
	puts "\n"
	puts "Overal, we have #{names.length} great students.\n\n"
end

# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)