# Write a Ruby program to draw a string as bold or italic text.
def exercise_1
    p "<i> Ruby </i>"
    p "<b> Ruby </b>"
end

# Write a Ruby program to insert a string of length 2 to an another string where the first string will be in the middle of the second string.
# Input: ("Pyon", "th")
# Output: Python
def exercise_2(original_string, insert_string)
    original_string[0...(original_string.length / 2)] << insert_string << original_string[original_string.length/2..-1]
end

# Write a Ruby program to lower case, upper case and capitalizes all the words of a given string.
# Input: "Ruby exercises"
# Output: "RUBY EXERCISES\nruby exercises\nRuby Exercises"
def exercise_3(input_string)
    p input_string.upcase
    p input_string.downcase
    p input_string.capitalize
end

# Write a Ruby program to check whether a string contains a substring.
# Input: ("JavaScript","Script")
# Output: "Substring present in the string."
def exercise_4(input_string, sub_string)
    input_string.include?(sub_string) ? "Substring present in the string." : "Substring not present in the string."
end

# Write a Ruby program to remove all white space within a string.
# Input: "   abc   "
# Output: "abc"
def exercise_5(input_string)
    input_string.strip
end

# Write a Ruby program to remove last specified characters from a given string
# Input: ("Java1", 1)
# Output: ("Java")
def exercise_6(input_string, number)
    return "" if number > input_string.length
    input_string[0...input_string.length - number]
end

# Write a Ruby program to split a delimited string and convert it to an array.
# Input: ("A,B,C,D,E,F", ",")
# Output: ["A", "B", "C", "D", "E", "F"]
def exercise_7(input_string, split_char)
    input_string.split(split_char)
end

# Write a Ruby program to remove a substring from a specified string.
# Input: ("JavaScript", "Script")
# Output: "Java"
def exercise_8(input_string, sub_string)
    input_string.gsub(sub_string, "")
end

# Write a Ruby program to check whether a string starts with an other string.
# Input: ("if you see me calling", "if")
# Output: true
def exercise_9(input_string, sub_string)
    input_string.start_with?(sub_string) ? true : false
end

# Write a Ruby program to count the occurrences of a specified character in a given string.
# Input: ("JavaScript", "J")
# Output: 1
def exercise_10(input_string, character)
    input_string.count(character)
end

# Write a Ruby program to sort a string's characters alphabetically.
# Input: ("javascript")
# Output: "aacijprstv"
def exercise_11(input_string)
    input_string.chars.sort.join
end

# Write a Ruby program to remove a specified character into a given string.
# Input: ("JavaScript", 'a')
# Output: JvScript
def exercise_12(input_string, character)
    input_string.tr(character, '')
end

# Write a Ruby program to trim specific characters from a string.
# Input: ("JavaScript", 'a')
# Output: JvScript
def exercise_13(input_string, character)
    input_string.tr(character, '')
end

# Write a Ruby program to remove the first and last two characters from a specified string.
# Input: ("JavaScript")
# Output: avaScrip
def exercise_14(input_string)
    input_string[1..-2]
end

# Write a Ruby program to get a substring from a specified position to the last char of a given string.
# Input: ("JavaScript", 5)
# Output: crip
def exercise_15(input_string, number)
    return "" if number > input_string.length
    input_string[number..-2]
end

# Write a Ruby program to get the number of lines in a given string.
# Input: "Java"
# Output: 1
def exercise_16(input_string)
    input_string.lines.count
end

# Write a Ruby program to truncate a given string to the first n words.
# Input: ("Ruby is OOP language", 2)
# Output: "Ruby is"
def exercise_17(input_string, number)
    input_string.split(" ")[0...number].join(" ")
end

# Write a Ruby program to remove a character from a given string if it starts with that specified character.
# Input: "PPHP"
# Output: "PHP"
def exercise_18(input_string, character)
    return input_string[1..-1] if input_string.start_with?(character)
    input_string
end