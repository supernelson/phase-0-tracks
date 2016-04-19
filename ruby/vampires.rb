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
  elsif employee_age < 100 && employee_eat_garlic_bread = "no" && employee_signup_insurance = "no"
    puts "#{employee_name} is most certainly a vampire."
  elsif employee_age > 100 && (employee_eat_garlic_bread = "no" || employee_signup_insurance = "no")
    puts "#{employee_name} probably a vampire."
  else
    print "Results for #{employee_name} inconclusive"
  end
  #Allergies
  all_allergies = []
  loop do
    puts "What allergies do you have?"
    allergy = gets.chomp
    all_allergies << allergy
    print all_allergies
    if allergy == "sunshine"
      puts "#{employee_name} is PROBABLY a vampire"
      break
    end
  end
  num += 1
end

wolf_or_vampire

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

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

