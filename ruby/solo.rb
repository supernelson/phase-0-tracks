#class of Big Technology Companies
class Tech_Companies
  #attributes include: age=>integer / salary=>hash / location=>string
  #reader includes website
  attr_accessor :name, :age, :founder, :salary, :location
  attr_reader :website
  #method to initialize the characteristics
  def initialize(name, founder, age)
    @name = name
    @founder = founder
    @age = age
  end
  #method to track behavior of stock price
  def stock(rating)
    #make a ratings chart
    if rating == 10
      "#{rating}/10! You love #{self.name}!"
    elsif rating >= 7
      "#{rating}/10! You think higly of #{self.name}!"
    elsif rating < 6 && rating > 5
      "#{rating}/10 for #{self.name} ain't bad."
    elsif rating < 5
      "#{rating}/10 rating? #{self.name} is questionable."
    end
  end
  #method to track behavior of media news
  def news(reaction)
    "#{reaction}, did you hear about #{self.name}?!"
  end
  #method to track tech trends
  def trends(trend)
    "How is #{self.name} approaching #{trend}?"
  end
end

# #Testing my release 0 & release 1
# facebook = Tech_Companies.new("Facebook", 2004, "Zuckerburg")
# puts facebook.stock(10)
# puts facebook.news("OMG")
# puts facebook.trends("AI")

#release 2 creating UI
def user_interface
  company = ''
  company_array = []
  user_input = nil
  ##start a loop here
  loop do
    #attributes for initialize method
    puts "What tech company do you like?"
    company = gets.chomp
    puts "Who is the founder?"
    boss = gets.chomp
    puts "How old do you think #{boss} is?"
    age = gets.chomp
        #arguments for my behavior methods
    puts "What do you rate this company (1-10)?"
    rating = gets.chomp
    puts "What industry trend did you read about (e.g. 'virtual reality'?"
    trend = gets.chomp
    #new class instance filled in with the above attribute & behavior answers.
    company = Tech_Companies.new(company, boss, age)
    #pushing the new instance into an array before looping.
    company_array << company
    #opting out of the loop
    puts "Would you like to add another company (Y/N)?"
    yes_no = gets.chomp.downcase
    if yes_no == "n"
      break
    end
  end
  #verify the user's finished array
  puts company_array

  #looping each array element to extract the object data into a readable string.
  i = 0
  until i >= company_array.length
    puts "#{company_array[i].founder} founded #{company_array[i].name} and is #{company_array[i].age}."
    i += 1
  end
end
user_interface