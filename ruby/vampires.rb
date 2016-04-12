puts "How many employees will be processed?"
employee_count = gets.chomp.to_i
num = 0

while num < employee_count
  puts "What is your name?"
    employee_name = gets.chomp
  puts "How old are you? What year were you born?"
    employee_age = gets.chomp
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    employee_eat_garlic_bread = gets.chomp
  puts "Would you like to enroll in the company’s health insurance?"
    employee_signup_insurance = gets.chomp
  num += 1
end
  case wolf_or_vampire
    when employee_age && (employee_eat_garlic_bread || employee_signup_insurance) == true
      puts "Probably not a vampire."
    when employee_age && (employee_eat_garlic_bread || employee_signup_insurance) != true
      puts "Probably a vampire."
    when employee_age && employee_eat_garlic_bread && employee_signup_insurance == false
      puts "Almost certainly a vampire."
    when employee_name == ("Drake Cula" || "Tu Fang")
      print "Definitely a vampire."
      else
        print "results inconclusive"
      end

