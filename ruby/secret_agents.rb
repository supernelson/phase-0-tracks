def encrypt(string)
  i = 0
  while i < string.length do
    if string[i].eql?("z") #edge case
      string[i] = "a"
    else
      string[i] = string[i].next
    end
    i += 1
  end
  puts string
  return string
end
encrypt("million")

def decrypt(string)
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while i < string.length do
    string[i] = alphabet[alphabet.index(string[i])-1]
  i += 1
  end
  return string
end
decrypt("njmmjpo")

encrypt("abc") #should return "bcd"
encrypt("zed") #should return "afe"
decrypt("bcd") #should return "abc"
decrypt("afe") #should return "zed"

decrypt(encrypt("swordfish")) #adding a return to encrypt "holds" swordfish for decrypt to work with.

puts "Would like to decrypt or encrypt a password?"
encrypt_decrypt = gets.chomp
puts "What is the password?"
password = gets.chomp
if encrypt_decrypt.eql?("encrypt")
  print encrypt(password)
elsif encrypt_decrypt.eql?("decrypt")
  print decrypt(password)
end