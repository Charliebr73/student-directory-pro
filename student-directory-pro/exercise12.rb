# Header
def print_header
	print "The students of my cohort at Makers Academy\n"
	print "-----------\n"
end


def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"
	# create an empty array to store future students
	students = []
	# get the name of the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :february}
		print "Now we have #{students.length} students, please enter another\n"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

#
def display(students)
	students.each_with_index do |student, index|
		print "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort) \n"
	end
end

#
def print_footer(names)
	print "Overall, we have #{names.length} great students\n"
end

# Get the info from the user
students = input_students
print_header
display(students)
print_footer(students)