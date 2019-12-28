# shortest_word.rb

def find_short(string)
  string.split.map(&:length).min
end

puts find_short("bitcoin take over the world maybe who knows perhaps")
puts find_short("turns out random test cases are easier than writing out basic ones")
puts find_short("lets talk about javascript the best language")
puts find_short("i want to travel the world writing code one day")
puts find_short("Lets all go on holiday somewhere very cold")
