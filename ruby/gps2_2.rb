# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#  [fill in any steps here]
#  set default quantity
#  print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def grocery_list(items)
  new_list = items.split(' ')
  groceries = {}
  new_list.each do |item|
    groceries[item] = 1
  end
  return groceries
end

#If list is defined any lower, then other methods will not work. This part of the UI has to be here in order for the list to be accepted into other methods or this method must be last.
puts "What items would you like on your list?"
user_input = gets.chomp
#This defines list as items added to the new hash method above to be passed into all other methods
list = grocery_list(user_input)


# Method to add an item to a list
# input: item name and optional quantity
# steps: create an empty hash then push a key value pair to it.
# output: use a hash, keys can be items and values can be the quantities. Make it readable using ruby methods to identify specific values/keys.

def add_item(list, item, quantity)
  list[item] = quantity
  return list
end

# Method to remove an item from the list
# input: puts question and gets.chomp
# steps: take user input and lookup key/value it matches.
# output: new hash without the item we removed.

def remove_item(list, item)
  list.delete(item)
  return list
end

# Method to update the quantity of an item
# input: puts question and gets.chomp a new value
# steps: take user input and lookup the key then push a value to update it.
# output: new hash with the key intact and a new value.

def update_quantity(list, item, new)
  if list.has_key?(item)
      list[item] = new
    #This is a different way that merges a new hash to update old hash
    # new_list = {key => new_quantity}
    # list.merge!(new_list) {|key, old_quantity, new_quantity| new_quantity}
    # p list
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

#Loop method in order to ask user what items need to be added, updated, removed, or to exit program
loop do
puts "What items and quantities would you like to add? Type 'done' when you're finished, type 'remove' to remove an item, and type 'update' to update an item"
item = gets.chomp

    if item == "done"
        puts "This is your final list"
        print_out(list)
        break

    elsif item == "remove"
        puts "What item do you want to remove?"
        remove_this = gets.chomp
        remove_item(list, remove_this)
        print_out(list)

    elsif item == "update"
        puts "What item do you want to update?"
        update_this = gets.chomp
        puts "what quantity do you need?"
        new_quantity = gets.chomp.to_i
        update_quantity(list, update_this, new_quantity)
        print_out(list)

    else
        puts "How many?"
        quantity = gets.chomp
        add_item(list, item, quantity)
        print_out(list)
    end
end
