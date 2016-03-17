# Hash Practice
Let's practice interacting with Hashes (key-value pairings) by writing a program that creates hashes, stores data in hashes, retrieves data from hashes, and prints the contents of a hash.

## TextAnalysis.rb
Take a look at [TextAnalysis.rb](TextAnalysis.rb).

### What's Happening?
Explain what is happening on each of the following lines in the code.

| Line # | What's happening?
|:------:|-------------------
| 1      |
| 2      |
| 3      |
| 6      |
| 7-8    |
| 9      |
| 10     |
| 11     |
| 12     |
| 13     |
| 14     |
| 17-19  |

### Data Types
What's the Data Type of the following?

| Code                       | Data Type
|----------------------------|-----------
| $feelings                  |
| :sad                       |
| happy                      |
| words                      |
| words.split(" ")           |
| $feelings[:sad]            |
| $feelings[:happy].include? |
| analyze_mood(text)         |

### Explaining the Code
| Question               | Answer
|------------------------|-------
| Why do we need line 9? |
| What is the relationship between `words` and `word` (line 10)? |
| Why doesn't line 19 have an associated if/condition? |
| What is the relationship between `text[0]`, `text[1]`, and `words`? |

### Assignment: Requirements
1. Write a loop to print out each day and the emoticon that is associated by analyzing the mood of that day.

Your result will look like:
```
03/01  :-(
03/13  :-|
...
```

*think*: Why does 03/13 come out as _sad_ when it should be _happy_? How could we fix this?

2. To make the results a little more accurate, let's write and utilize a method to strip out the punctuation that affects the results. Namely, exclamation marks (!), periods (.), commas (,), and hashtags (#).

Your method should take a string as an argument and return the string without the above mentioned punctuation.

After writing this method, our new result should be:
```
03/01  :-(
03/13  :-)
...
```

3. Write a method to determine how many logged entries it takes until there have been 3 :-) happy days.

4. Write a method to determine the most common mood across all logged entries.

## Challenge Assignment
[Encryptor Cipher](http://tutorials.jumpstartlab.com/projects/encryptor.html)
