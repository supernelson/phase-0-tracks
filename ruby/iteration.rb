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
countries = ["France", "spain", "America", "Germany", "greece"]
country_city = {france: "Paris", spain: "madrid", germany: "Berlin", greece: "athens", america: "Washington", iran: "ternan", iraq: "Baghdad" }

#1 A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

countries.delete_if {|country| country.include?("g")}
country_city.delete_if {|country, city| city.include?("h") && country.to_s.include?("g")}
p countries
p country_city


#2 A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
#reseting array
countries = ["France", "spain", "America", "Germany", "greece"]
country_city = {france: "Paris", spain: "madrid", germany: "Berlin", greece: "athens", america: "Washington", iran: "ternan", iraq: "Baghdad" }

countries.keep_if {|country| country.include?("a")}
p countries
country_city.keep_if do |country, city|
  country.to_s.length > 5 && city.include?("a")
end
p country_city

#3 A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
#reseting array
countries = ["France", "spain", "America", "Germany", "greece"]
country_city = {france: "Paris", spain: "madrid", germany: "Berlin", greece: "athens", america: "Washington", iran: "ternan", iraq: "Baghdad" }

countries.select {|country| country.include?("a")}
p countries
country_city.select do |country, city|
  country.to_s.length > 5 && city.include?("a")
end

#4 A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
#reseting array
countries = ["France", "spain", "America", "Germany", "greece"]
country_city = {france: "Paris", spain: "madrid", germany: "Berlin", greece: "athens", america: "Washington", iran: "ternan", iraq: "Baghdad" }

countries.drop_while do |a| a.length <= 6
end
p countries

new_countries = countries.drop_while do |a| a.length <= 6
end
p new_countries

new_list = country_city.reject do |country, city| country.to_s.include?("g")
end
p new_list
