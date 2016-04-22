# gets.chomp the spy name
# split the name at the space for first & last name
# switch the positions
# create an index of vowels
# if a vowel is encountered use .next on the vowel array

def spy_name_converter
  real_name = 'nelson chen'
  spy_name = real_name.split(' ')
  p spy_name
  spy_name[0], spy_name[1] = spy_name[1], spy_name[0]
  p spy_name
  vowels = ['a','e','i','o','u']
  spy_name.chars
  p spy_name
end
spy_name_converter