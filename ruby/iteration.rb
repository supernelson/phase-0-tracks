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
