# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(2, 'o')
# => “zoom”

puts "enhance".center(15)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat(" suspects")
#=> "the usual suspects"

puts " suspects".insert(0, "the usual")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# Not a pretty solution. Is there a better one for this?
puts "The mystery of the missing first letter".tr_s('T', '')
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".each_byte {|a| puts a}
# => 122
# (What is the significance of the number 122 in relation to the character z?)

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4

puts "\n Methods I find particularly useful: gsub, insert, upcase, downcase,"