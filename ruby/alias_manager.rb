# gets.chomp the spy name
# split the name at the space for first & last name
# switch the positions
# create an index of vowels
# if a vowel is encountered use .next on the vowel array

def spy_name_flip
  real_name = 'nelson chen' #replace with gets.chomp
  spy_name = real_name.split(' ')
  spy_name[0], spy_name[1] = spy_name[1], spy_name[0]
  spy_name = spy_name.join(' ').chars
  #return spy_name
end
spy_name_flip

#loop through the spy_names
#make vowels in a position
#flip the vowels to next vowel
#if vowel... then add 1 to index.

def letter_change(spy_name_flip)
  p spy_name_flip.length
  p spy_name_flip
  spy_name_encrypted = ""
  vowel = 'a'||'e'||'i'||'o'||'u'
  consonant = 'b'||'c'||'d'||'f'||'g'||'h'||'j'||'k'||'l'||'m'||'n'||'p'||'q'||'r'||'s'||'t'||'v'||'w'||'x'||'y'||'z'
  i = 0
  while i < spy_name_flip.length
    if spy_name_flip[i].include?('c')
      spy_name_flip[i].next!
    elsif spy_name_flip[i]=='a' || spy_name_flip[i]=='e' || spy_name_flip[i]=='i' || spy_name_flip[i]=='o' || spy_name_flip[i]=='u'
      spy_name_flip[i] = "a"
    elsif spy_name_flip[i] == ' '
      spy_name_flip[i]
    end
    i += 1
  end
  p spy_name_flip

end
letter_change(spy_name_flip)
