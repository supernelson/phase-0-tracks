# gets.chomp the spy name
# split the name at the space for first & last name
# switch the positions
# create an index of vowels
# if a vowel is encountered use .next on the vowel array

def name_flip
  real_name = gets.chomp #replace with gets.chomp
  flip_name = real_name.split(' ')
  p flip_name
  flip_name = flip_name[1], flip_name[0]
  p flip_name
  flip_name = flip_name.join(' ').chars
  p flip_name
  return flip_name
end

#loop through the flip_names
#make vowels in a position
#flip the vowels to next vowel
#if vowel... then add 1 to index.

def letter_change(name)
  alphabet = "bcdfghjklmnpqrstvwxyz"
  vowel = "aeiou"
  new_name = ""
  name_array = []
  letter_new = ""

  name.map! do |letter|
    if alphabet.index(letter) != nil
      letter_new = alphabet[alphabet.index(letter) + 1]
    elsif vowel.index(letter) != nil
      letter_new = vowel[vowel.index(letter) + 1]
    elsif letter == " "
      letter_new = letter
    end
    new_name += letter_new
  end
  name_array << new_name
  p name_array
  return name_array
end
letter_change(name_flip)

def all_names(name_flip)
  if name_flip.real_name == "quit"
    p letter_change
  #end
end

#why is everything printing so many times?
#how do i use info from one method and apply to another?
#how do i keep saving more gets.chomp into an array?
