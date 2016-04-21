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
      puts "quit"
    end
  end
end

castro