#initialize a new hash called interior_designer
interior_designer = {
  name: "",
  age: "",
  children:"",
  decor_theme: "",
  paint: "",
  furniture: "",
}
#ask the questions which correspond to the hash keys and push the values.
puts "what is your name?"
interior_designer[:name] << gets.chomp.to_s
puts "what is your age?"
interior_designer[:age] << gets.chomp.to_s
puts "how many children do you have?"
interior_designer[:children] << gets.chomp.to_s
puts "what is your favorite decor theme?"
interior_designer[:decor_theme] << gets.chomp.to_s
puts "what's your favorite paint style?"
interior_designer[:paint] << gets.chomp.to_s
puts "whats furniture style do you like best?"
interior_designer[:furniture] << gets.chomp.to_s
puts interior_designer
#ask if any of the keys need updated answers/values
puts "Would you like to change any of your answer?"
change = gets.chomp.downcase
if change == "yes"
  puts "pick one: name, age, children, decor_theme, paint, furniture."
  symbol = gets.chomp.downcase.to_sym
  puts "what is your new answer?"
  new_answer = gets.chomp
  interior_designer[symbol] = new_answer
  puts interior_designer
elsif change == "none"
  puts interior_designer
end

#upgrade for edge cases and restrict conditional path
#can't figure out how to cleanly output .to_i ln12