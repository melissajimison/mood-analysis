# Mood Analysis: Hash Practice
Let's practice interacting with Hashes (key-value pairings) by writing a program that creates hashes, stores data in hashes, retrieves data from hashes, and prints the contents of a hash.

## mood-analysis.rb
Take a look at [mood-analysis.rb](mood-analysis.rb).

### What's Happening?
Explain what is happening on each of the following lines in the code.

| Line # | What's happening?
|:------:|-------------------
| 1      | assings the constant variable to a FEELINGS hash
| 2      | declares the key happy: (which is a symbol) and its value, the literal array that contains each of those words as an element
| 3      |declares the key sad: (which is a symbol) and its value, the literal array that contains each of those words as an element
| 6      | declare the method analyze_mood that takes one argument
| 7-8    |declares de local variables sad and happy
| 9      |convert the argument 'word' into all downcase letters
| 10     |creates an array, splits the 'word' input by space and add them as an element. (a word). Also go throug each of those elements
| 11     |look if the any of the words of the input are include in the value(the array) of the key :happy in the hash FEELINGS. should return false or true
| 12     |it reasings the value of the variable happy adding one to itself
| 13     |if the  condition in line 12 returns false it looks if the any of the words of the input are include in the value(the array) of the key :sad in the hash FEELINGS. should return false or true
| 14     |it reasings the value of the variable sad adding one to itself
| 17-19  | it defines the value it should return

### Data Types
What's the Data Type of the following?

| Code                       | Data Type
|----------------------------|-----------
| FEELINGS                   | Hash
| :sad                       | symbol
| happy                      |  fixnum
| words                      |  string
| words.split(" ")           |  array
| FEELINGS[:sad]             |  array
| FEELINGS[:happy].include?  |  baloon
| analyze_mood(text)         |  String

### Explaining the Code
| Question               | Answer
|------------------------|-------
| Why do we need line 9? | if people use upcases
| What is the relationship between `words` and `word` (line 10)? | word is local and temporary variable, that temporalaly replaces the value in the array words
| Why doesn't line 19 have an associated if/condition? |
| What is the relationship between `text[0]`, `text[1]`, and `words`? |

### Assignment: Requirements
1. Replace lines 31 and 32 and write a loop to print out each day and the emoticon that is associated by analyzing the mood of that day.

Your result will look like:
```
03/01  :-(
03/13  :-|
...
```

**think**: Why does 03/13 come out as _neutral_ when it should be _happy_? How could we fix this?

2. To make the results a little more accurate, let's write and utilize a method called `strip_punctuation` to strip out the punctuation that affects the results. Namely, remove  exclamation marks (!), periods (.), commas (,), and hashtags (#).

Your method should take a string as an argument and return the string without the above mentioned punctuation.

After writing this method, our new result should be:
```
03/01  :-(
03/13  :-)
...
```

**think**: Where should we call `strip_punctuation`? Does it matter? Why?

3. Write a method called `happy_days` to determine how many logged entries it takes until there have been three :-) happy days.

Your output could be something like:
```
It takes 5 entries for 3 happy days to occur
```

**think**: What are you going to do if there aren't at least 3 happy days? Where do you need to handle that case?

4. Write a method called `overall_mood` to determine the most common mood across all logged entries.

Your output could be something like:
```
The most common mood is :-)
```

**think**: Should you use an array or a hash to solve this problem? Why?

**think**: What if we eventually want to add feelings to our analysis? Can we write this code in a way that will prevent us from having to re-write it later?
