##TYLER OFFICE HOURS

# gets.chomp the spy name
# split the name at the space for first & last name
# switch the positions
# create an index of vowels
# if a vowel is encountered use .next on the vowel array

def start_name
  gets.chomp.downcase
  # name = gets.chomp.downcase
  # if name == "quit" || name == ''
  #   break
  # end
end

def split_name(name)
  name.split(' ')
end

def split_flip_name
  p "what is your first and last name? (type 'print' to quit)"

  formatted_name = split_name(start_name).reverse.join(' ').chars
  #p flip_name
  #p join_name
end

#loop through the flip_names
#make vowels in a position
#flip the vowels to next vowel
#if vowel... then add 1 to index.

def letter_change(spy_name)
  consonant = "bcdfghjklmnpqrstvwxyz"
  vowel = "aeiou"
  new_name = ""
  letter_new = ""

    spy_name.each do |letter|
      if consonant.index(letter) != nil
        letter_new = consonant[consonant.index(letter) + 1]
      elsif vowel.index(letter) != nil
        if letter == "u" #addresses last vowel edge case
          letter_new = "a"
        elsif
          letter_new = vowel[vowel.index(letter) + 1]
        end
      elsif letter == " "
        letter_new = letter
      end
      new_name += letter_new.to_s #.to_s addresses a nil edge case
    end
    p new_name

end

def name_array
  new_name_array = []
  spy_name = split_flip_name
  #exits when quit is entered.
  until spy_name == [" ", "q", "u", "i", "t"]
  loop do
    new_name_array << letter_change(spy_name)
    p new_name_array
  end
end
name_array


#why is everything printing so many times?
#how do i use info from one method and apply to another?
#how do i keep saving more gets.chomp into an array?




## ANDREW OFFICE HOURS

# # gets.chomp the spy name
# # split the name at the space for first & last name
# # switch the positions
# # create an index of vowels
# # if a vowel is encountered use .next on the vowel array


# def split_name(name)
#   name.split(' ')
# end

# def split_flip_name(name)
#   p "what is your first and last name? (type 'print' to quit)"

#   formatted_name = split_name(name).reverse.join(' ').chars
# end

# # split_flip_name = 'torres felicia'.chars
# #loop through the flip_names
# #make vowels in a position
# #flip the vowels to next vowel
# #if vowel... then add 1 to index.

# def letter_change(spy_name)
#   consonant = "bcdfghjklmnpqrstvwxyz"
#   vowel = "aeiou"
#   new_name = ""
#   letter_new = ""

#     spy_name.each do |letter|
#       if consonant.index(letter) != nil
#         letter_new = consonant[consonant.index(letter) + 1]
#       elsif vowel.index(letter) != nil
#         if letter == "u" #addresses last vowel edge case
#           letter_new = "a"
#         elsif
#           letter_new = vowel[vowel.index(letter) + 1]
#         end
#       elsif letter == " "
#         letter_new = letter
#       end
#       new_name += letter_new.to_s #.to_s addresses a nil edge case
#     end
#     new_name

# end

# # p letter_change(split_flip_name) = 'vussit gimodoe'



# loop do
#   puts 'what is the spys name'
#   input = gets.chomp.downcase

#   if input == 'quit'
#     break
#   end

#   formatted_name = split_flip_name(input)

#   secret_name = letter_change(formatted_name)
# end



# # def name_array
# #   new_name_array = []
# #   spy_name = split_flip_name
# #   #exits when quit is entered.
# #   until spy_name == [" ", "q", "u", "i", "t"]
# #   loop do
# #     new_name_array << letter_change(spy_name)
# #     p new_name_array
# #   end
# # end


# # name_array


# #why is everything printing so many times?
# #how do i use info from one method and apply to another?
# #how do i keep saving more gets.chomp into an array?
