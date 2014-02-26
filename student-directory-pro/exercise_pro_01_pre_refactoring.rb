# Setting up an interactive menu
# Header
def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------\n"
end

def print(students)
  students.each do |student|
    puts "#{student[:name].capitalize} - in the #{student[:cohort].capitalize} cohort - is from #{student[:country_of_birth].capitalize}."
  end
end

def print_footer(names)
  if names.length <= 1
    puts "Overall, we have #{names.length} great student."
  else 
    puts "Overall, we have #{names.length} great students."
  end
end


def interactive_menu
  students =[]
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # '9' because we'll be adding more items later
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I do not know what you meant! Please try again."
    end
  end
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


# Get info from the user
interactive_menu
students = input_students
print_header
print(students)
print_footer(students)