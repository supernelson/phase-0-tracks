# gets.chomp the spy name
# split the name at the space for first & last name
# switch the positions
# create an index of vowels
# if a vowel is encountered use .next on the vowel array

def name_flip
  real_name = 'nelson chen' #replace with gets.chomp
  flip_name = real_name.split(' ')
  p flip_name
  flip_name = flip_name[1], flip_name[0]
  p flip_name
  flip_name = flip_name.join(' ').chars
  p flip_name
  return flip_name
end
name_flip
#loop through the flip_names
#make vowels in a position
#flip the vowels to next vowel
#if vowel... then add 1 to index.

#alphabet = "bcdfghjklmnpqrstvwxyz"
#p alphabet[3]
#p alphabet[3+1]
def letter_change(name)
  alphabet = "bcdfghjklmnpqrstvwxyz"
  vowel = "aeiou"
  new_name = ""
  name.each do |letter|
    letter_new = ""
    if alphabet.index(letter) != nil
      letter_new = alphabet[alphabet.index(letter) + 1]
    elsif vowel.index(letter) != nil
      letter_new = vowel[vowel.index(letter) + 1]
    elsif letter == " "
      letter_new = letter
    end
    p letter
    new_name += letter_new

  end
    #new_name += letter
    p new_name
end
letter_change(name_flip)

#letter_change(["c", "h", "e", "n", " ", "n", "e", "l", "s", "o", "n"])

