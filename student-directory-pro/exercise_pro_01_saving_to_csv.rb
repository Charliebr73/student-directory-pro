@students = [] # an empty array accessible to all methods

def print_header  # sets the 'header' display format
  puts "The students of my cohort at Makers Academy"
  puts "-------------\n"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name].capitalize} - in the #{student[:cohort].capitalize} cohort - is from #{student[:country_of_birth].capitalize}."
  end
  puts "\n"
end

def print_footer
  if @students.length <= 1
    puts "Overall, we have #{@students.length} great student."
  else 
    puts "Overall, we have #{@students.length} great students."
  end
end

def input_students
  # get the first name
  puts "Please enter the name and surname of the student" 
  puts "To finish, just hit return twice"
  name = gets.chomp.capitalize # gets the student's name

  puts "what cohort is the student in?"
  cohort = gets.chomp.capitalize

  puts "Where was s/he born?"
  country_of_birth = gets.chomp.capitalize

    name = "N/A" if name.empty?
    cohort = "N/A" if cohort.empty?
    country_of_birth = "N/A" if country_of_birth.empty?

  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    @students << {:name => name.to_sym, :cohort => cohort.to_sym, :country_of_birth => country_of_birth.to_sym}
    if @students.length <= 1    
      puts "Now we have #{@students.length} student.\n"
    else 
      puts "Now we have #{@students.length} students.\n"
    end

    # get another name from the user
    puts "Would you like to add another student? Yes / No?"
    continue = gets.chomp.downcase
    if continue == "yes"
      puts "Please enter the name and surname of the student."
      name = gets.chomp.capitalize
      puts "Which cohort is the student in?" 
      cohort = gets.chomp.capitalize
      puts "Where was the student born?"
      country_of_birth = gets.chomp.capitalize

        name = "N/A".upcase if name.empty?
        cohort = "N/A".upcase if cohort.downcase.empty?
        country_of_birth = "N/A".upcase if country_of_birth.empty?
    else
      break
    end
  end
end

# start of interactive menu -------
def print_menu
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to 'students.csv'"
  puts "9. Exit" # '9' because we'll be adding more items later
end

def show_students
  # 2. read the input and save it into a variable
  print_header
  print
  print_footer
end

def process(selection)
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I do not know what you meant! Please try again."
    end
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:country_of_birth]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end


def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
    print_students_list
  end
end

interactive_menu