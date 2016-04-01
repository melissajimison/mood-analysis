FEELINGS = {
  happy: %w(yay good great),
  sad: %w(terrible awful horrible)
}

def strip_punctuation(words)
  words.downcase!
  array = words.split(" ")
  array.map! { |word| word.delete("^a-zA-Z0-9") }
end

def analyze_mood(words)
  happy = 0
  sad = 0
  words = strip_punctuation(words) ##################
  words.each do |word|
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
puts strip_punctuation(text[1])

def happy_days

  happy_face = 0
  statment = ""
  faces = text.map { |line| analyze_mood(line) }

  faces.each_with_index do |one_face, index|
    if one_face == ":-)"
      happy_face += 1
      break if happy_face > 3
    end
    statment = "It takes #{index + 1} entries for #{happy_face} happy days to occur"
  end
  statment
end


def overall_mood
  happy_face = 0
  sad_face = 0
  moods = text.map { |line| analyze_mood(line) }
  counts = Hash.new(0)
  moods = moods.each {|mood| counts[mood] += 1}
  moods.each { |string, number| number.max }
  counts.key(counts.values.max)
end
