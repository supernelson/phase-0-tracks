puts "How many employees will be processed?"
employee_count = gets.chomp.to_i
num = 0
while num < employee_count
  #question & answers
  puts "What is your name?"
    employee_name = gets.chomp
  puts "How old are you?"
    employee_age = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    employee_eat_garlic_bread = gets.chomp
  puts "Would you like to enroll in the company’s health insurance?"
    employee_signup_insurance = gets.chomp
  #if/else statement
  if employee_name == ("Drake Cula" || "Tu Fang")
    puts "#{employee_name} is definitely a vampire."
  elsif employee_age < 100 && (employee_eat_garlic_bread = "yes" || employee_signup_insurance = "yes")
    puts "#{employee_name} probably NOT a vampire."
  elsif employee_age > 100 && employee_eat_garlic_bread = "no" && employee_signup_insurance = "no"
    puts "#{employee_name} is most certainly a vampire."
  elsif employee_age > 100 && (employee_eat_garlic_bread = "no" || employee_signup_insurance = "no")
    puts "#{employee_name} probably a vampire."
  else
    print "Results for #{employee_name} inconclusive"
  end
  #release 4 having difficulties
  puts "What allergies do you have?"
  all_allergies = []
  until gets.chomp = "done"
  allergies = gets.chomp
  if gets.chomp = "sunshine"
      puts "#{employee_name} is probably a vampire"
    end
  all_allergies << allergies
  end
puts all_allergies
num += 1
end