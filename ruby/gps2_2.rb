# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#  [fill in any steps here]
#  set default quantity
#  print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def grocery_list(string)
  list = string.split(' ')
  groceries = {}
  list.each do |item|
    groceries.store(item, 0)
  end
  puts groceries
  return groceries
end
list = grocery_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps: create an empty hash then push a key value pair to it.
# output: use a hash, keys can be items and values can be the quantities. Make it readable using ruby methods to identify specific values/keys.

def add_item(list)
  puts "what item would you like to add?"
  key = gets.chomp
  puts "how many?"
  value = gets.chomp
  list[key] = value
  puts list
end

# Method to remove an item from the list
# input: puts question and gets.chomp
# steps: take user input and lookup key/value it matches.
# output: new hash without the item we removed.

def remove_item(list)
  p "what item would you like to remove?"
  key = gets.chomp.to_s
  list.delete(key)
  p list
end


# Method to update the quantity of an item
# input: puts question and gets.chomp a new value
# steps: take user input and lookup the key then push a value to update it.
# output: new hash with the key intact and a new value.

def update_quantity(list)
  puts "what item would you like to update?"
  key = gets.chomp.to_s
  if list.has_key?("apples")
    puts "what quantity do you need?"
    new_quantity = gets.chomp.to_i
    new_list = {key => new_quantity}
    list.merge!(new_list) {|key, old_quantity, new_quantity| new_quantity}
    puts list
  end
end

# Method to print a list and make it look pretty
# input: take the hash and ask for each key & value.
# steps: loop through the hash.
# output: loop through the hash and print out a sentence with #{item} and #{count}.

def print_out(list)
  list.each do |key, value|
    puts "#{key}: #{value}"
  end
end
print_out(list)

#make a user interface
#loop through add_item until a break


def user_interface
  new_list = {}
  loop do
    add_item(new_list)
    if new_list.has_key?("done") == true
      break
      print_out(new_list)
    else
      add_item(new_list)
    end
  end
end
user_interface

# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4