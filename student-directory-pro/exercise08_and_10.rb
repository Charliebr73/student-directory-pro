# Header
def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------\n"
end

def input_students
  # create an empty array to store future students
  students = []
  # get the first name
  puts "Please enter the name and surname of the student" 
  name = gets.chomp

  puts "what cohort is the student in?"
  cohort = gets.chomp

  puts "Where was s/he born?"
  country_of_birth = gets.chomp

  puts "To finish, just hit return twice"

    name = "N/A" if name.empty?
    cohort = "N/A" if cohort.empty?
    country_of_birth = "N/A" if country_of_birth.empty?

  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    students << {:name => name.to_sym, :cohort => cohort.to_sym, :country_of_birth => country_of_birth.to_sym}
    if students.length <= 1    
      puts "Now we have #{students.length} student."
    else 
      puts "Now we have #{students.length} students."
    end

    # get another name from the user
    puts "Would you like to add another student? Yes / No?"
    continue = gets.chomp.downcase
    if continue == "yes"
      puts "Please enter the name and surname of the student."
      name = gets.chomp
      puts "Which cohort is the student in?" 
      cohort = gets.chomp
      puts "Where was the student born?"
      country_of_birth = gets.chomp

        name = "N/A".upcase if name.empty?
        cohort = "N/A".upcase if cohort.downcase.empty?
        country_of_birth = "N/A".upcase if country_of_birth.empty?
    else
      break
    end
  end

  # return the array of students
  students
end

def display(students)
  students.each do |student|
    puts "#{student[:name].capitalize} - #{student[:cohort].capitalize} cohort - is from #{student[:country_of_birth].capitalize}."
  end
end

def print_footer(names)
  if names.length <= 1    
    puts "Overall, we have #{names.length} great student"
  else
    puts "Overall, we have #{names.length} great students"
  end
end

# Get info from the user
print_header
students = input_students
display(students)
print_footer(students)