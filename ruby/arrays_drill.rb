def add_to_array(array, item)
  return array << item
end

def new_list(a, b, c)
  new_array = [a, b, c]
  print new_array
end

sports_array = []
p sports_array
sports_array += ["basketball", "baseball", "snooker", "hockey", "soccer", "tennis"]
p sports_array
sports_array.delete_at(2)
p sports_array
sports_array.insert(2, "skiis")
p sports_array
sports_array.shift
p sports_array
#6 come back to this
sports_array.include?("skis")
x = sports_array.include?("skis")
if x== true
puts "includes skis"
else puts "does not include skis"
end

teams = ["warriors", "niners", "sharks", "earthquakes"]
p teams

ball = teams + sports_array
p ball

new_list("nets", "mets", "jets")
p add_to_array(["nelson"], "adam")