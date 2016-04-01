FEELINGS = {
  happy: %w(yay good great),
  sad: %w(terrible awful horrible)
}

def analyze_mood(words)
  happy = 0
  sad = 0
  words.downcase!
  words.split(" ").each do |word|
    if FEELINGS[:happy].include? word
      happy += 1
    elsif FEELINGS[:sad].include? word
      sad += 1
    end
  end
  return ":-)" if happy > sad
  return ":-(" if happy < sad
  return ":-|"
end

text = [
  "03/01 I'm having a terrible horrible no good day.",
  "03/13 Yesterday was horrible, but today is great! Yay!",
  "04/02 Sad Panda. #terribleday",
  "04/15 Hello World, today is fabulous! #yay",
  "05/01 Great! Yay! Good! Yay! Happy. Happy.",
  "05/11 Yay, yay, yay! I'm having a awfuly great day."
]

# puts analyze_mood(text[0])
# puts analyze_mood(text[1])

puts text.map { |line| line[0,5] + " " + analyze_mood(line) }
puts
puts

def strip_punctuation(words)
  happy = 0
  sad = 0
  words.downcase!
  # "03/01 I'm having a terrible horrible no good day."
  array = words.split(" ")
  array.map! { |word| word.delete("^a-zA-Z0-9") }
  array.each do |word|
    if FEELINGS[:happy].include? word
      happy += 1
    elsif FEELINGS[:sad].include? word
      sad += 1
    end
  end
  return ":-)" if happy > sad
  return ":-(" if happy < sad
  return ":-|"
end
puts text.map { |line| line[0,5] + " " + strip_punctuation(line) }
