# gets.chomp the spy name
# split the name at the space for first & last name
# switch the positions
# create an index of vowels
# if a vowel is encountered use .next on the vowel array

def split_flip_name
  p "what is your first and last name? (type 'print' to quit)"
  name = gets.chomp.downcase
  old_name_array = []
  old_name_array << name
  p old_name_array
  split_name = name.split(' ')
  #more elegant to use reverse method
  flip_name = split_name[1], split_name[0]
  #p flip_name
  join_name = flip_name.join(' ').chars
  #p join_name
end

#loop through the flip_names
#make vowels in a position
#flip the vowels to next vowel
#if vowel... then add 1 to index.

def letter_change
  consonant = "bcdfghjklmnpqrstvwxyz"
  vowel = "aeiou"
  new_name = ""
  letter_new = ""

    split_flip_name.each do |letter|
      if consonant.index(letter) != nil
        letter_new = consonant[consonant.index(letter) + 1]
      elsif vowel.index(letter) != nil
        #addresses last vowel edge case
        if letter == "u"
          letter_new = "a"
        elsif
          letter_new = vowel[vowel.index(letter) + 1]
        end
      elsif letter == " "
        letter_new = letter
      end
      #.to_s addresses a nil edge case
      new_name += letter_new.to_s
    end
    p new_name

end

def name_hash
  name_hash = {}
  until split_flip_name == [" ", "q", "u", "i", "t"] #exits when quit is entered.
    new_name_array << letter_change
    p new_name_array
  end
end
name_array


#why is everything printing so many times?
#how do i use info from one method and apply to another?
#how do i keep saving more gets.chomp into an array?
