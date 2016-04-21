#5.4 release 0 prework
def castro
  puts "here are some spots to visit in the castro."
  shops = {coffee: "reveille", food: "lark", bites: "anchor oyster bar", food: "starbelly"}
  shops.each do |type, name|
    if type == :coffee
      puts name + " has great " + type.to_s
    elsif type == :food
      puts "you should go to #{name}"
    elsif type == :bites
      puts "hot tip: check out #{name}"
    else
      puts "nothing found."
    end
  end
end
castro

#release 1
sport_type = ["soccer", "basketball"]
sport_team = {barcelona: "messi", warriors: "curry", madrid: "ronaldo"}

sport_type.each {|sport| puts "#{sport} is a sport"}
sport_type.map! do |a| puts "#{a.capitalize}"
end
sport_team.each {|team, player| puts "The best player on #{team} is #{player}."}
sport_team.map do |team, player| puts "#{player.upcase} is the leader of #{team.upcase}"
  end
print sport_team

#release 2
countries = ["france", "spain", "germany", "greece"]
country_city = {france: "Paris", spain: "madrid", germany: "Berlin", greece: "athens", america: "Washington", iran: "ternan", iraq: "Baghdad" }

#1 A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

countries.delete_if {|country| country.include?("s")}
p countries

country_city.delete_if {|country, city| city.include?("h")|| country.to_s.include?("g")}
p country_city

#spencer side testing
country_city.delete_if {|country, city| country.to_s.length > 5}
p country_city

#2 A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

countries.keep_if {|country| country.