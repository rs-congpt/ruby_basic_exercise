# Write Ruby program to get ruby version with patch number.
def exercise_1
    p "Ruby Version: " + RUBY_VERSION
    p "Ruby Patch Level: " + RUBY_PATCHLEVEL.to_s
end

# Write a Ruby program to display the current date and time.
def exercise_2
    current_time = Time.now
    time_now = current_time.strftime "%d/%m/%Y %H:%M"
    puts "Current Date and Time: #{time_now}"
end

# Write a Ruby program to create a new string which is n copies of a given string where n is a non-negative integer.
# Input: ("a", 3)
# Output: "aaa"
def exercise_3(string_input, n)
    string_input.to_s * n
end

# Write a Ruby program which accept the radius of a circle from the user and compute the parameter and area.
def exercise_4
    print "Input the radius of the circle: "
    radius = gets.chomp().to_f
    p "The perimeter is #{radius * 2 * Math::PI}"
    p "The area is #{Math::PI * radius * radius}"
end

# Write a Ruby program to check whether a string starts with "if"
# Input: "if"
# Output: true
def exercise_5(input)
    input.start_with?("if") ? (p true) : (p false)
end

# Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them.
def exercise_6
    print "Input your first name: "
    first_name = gets.chomp()
    print "Input your last name: "
    last_name = gets.chomp()
    p "Hello #{last_name} #{first_name}"
end

# Write a Ruby program to accept a filename from the user print the extension of that.
def exercise_7
    print "Enter a file path: "
    file_path = gets.chomp
    file_name = File.basename(file_path)
    base_name = File.basename(file_path, ".*")
    extension = File.extname(file_path)
    path_name = File.dirname(file_path)
    puts "File name: #{file_name}"
    puts "Base name: #{base_name}"
    puts "Extension: #{extension}"
    puts "Path name: #{path_name}"
end

# Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them
def exercise_8
    print "Input your first name: "
    first_name = gets.chomp()
    print "Input your last name: "
    last_name = gets.chomp()
    p "Hello #{last_name} #{first_name}"
end

# Write a Ruby program to check three numbers and return true if one or more of them are small. 
# A number is called "small" if it is in the range 1..10 inclusive.
# Input: (1, 2, 3)
# Output: true
def exercise_9(number_1, number_2, number_3)
    ((1..10).include?(number_1) || (1..10).include?(number_2) || (1..10).include?(number_3)) ? true : false
end

# Write a Ruby program to check three numbers and return true if one or the other is small, but not both.
# A number is called "small" if it is in the range 1..10 inclusive.
# Input: (11, 11, 11)
# Output: false
def exercise_10(number_1, number_2, number_3)
    return false if ((1..10).include?(number_1) && (1..10).include?(number_2) && (1..10).include?(number_3))
    true if ((1..10).include?(number_1) || (1..10).include?(number_2) || (1..10).include?(number_3))
end

# Write a Ruby program to print the following 'here document'.
def exercise_11
    p "Sample string :"
    p %Q{a string that you "don't" have to escape}
    p "This"
    p "is a ....... multi-line"
    p "heredoc string --------> example"
end

# Write a Ruby program to create a new string where "if" is added to the front of a given string. If the string already begins with "if", return the string unchanged.
# Input: "if"
# Output: "if"
def exercise_12(string_input)
    string_input.start_with?("if") ? string_input : "if " << string_input
end

# Write a Ruby program to create a new string from a given string using the first three characters or whatever is there if 
# the string is less than length 3. Return n copies of the string.
# Input: ("abc", 1)
# Output: "abc"
def exercise_13(string_input, n)
    string_input.length < 3 ? string_input * n : string_input[0..2] * n
end

# Write a Ruby program which accept the radius of the sphere as input and compute the volume.
def exercise_14
    print "Input the radius of the circle: "
    radius = gets.chomp().to_f
    volume_of_sphere = 4.0/3 * Math::PI * (radius ** 3)
    p "The volume of the sphere is : #{volume_of_sphere}"
end

# Write a Ruby program to create a new string from a given string where the first and last characters have been exchanged.
# Input: "Python"
# Output: "nythoP"
def exercise_15(string_input)
    string_input = string_input.chars
    string_input[0], string_input[-1] = string_input[-1], string_input[0]
    p string_input.join
end

# Write a Ruby program to test whether you are minor (Consider a child unless he or she is less than 18 years old.) or not.
# Input: 16
# Output: You are a minor
def exercise_16
    print "Input your age: "
    age = gets.chomp().to_i
    age < 18 ? (p "You are a minor") : (p "You aren't a minor")
end

# Write a Ruby program to compute the absolute difference between n and 33 and return double the absolute difference if n is over 33 
# Input: 30
# Output: 3
def exercise_17(n)
    n > 33 ? (n - 33).abs * 2 : (n - 33).abs 
end

# Write a Ruby program to find the maximum of two numbers.
# Input: (11, 12)
# Output: "Max = 12"
def exercise_18(number_1, number_2)
    number_1 > number_2 ? (p "Max = #{number_1}") : (p "Max = #{number_2}")
end

# Write a Ruby program to check two integers and return true if one of them is 20 otherwise return their sum.
# Input: (20, 21)
# Output: true
def exercise_19(number_1, number_2)
    return "One of numbers isn't integer" if !number_1.is_a?(Integer) || !number_2.is_a?(Integer)
    number_1 == 20 || number_2 == 20 ? true : (number_1 + number_2)
end

# Write a Ruby program to find the greatest of three numbers.
# Input: (1, 2, 3)
# Output: 3
def exercise_20(number_1, number_2, number_3)
    return "y = #{number_1} is greatest" if number_1 >= number_2 && number_1 >= number_3
    return "y = #{number_2} is greatest" if number_2 >= number_3
    "y = #{number_3} is greatest"
end

# Write a Ruby program to check whether a number is within 10 of 100 or 200.
# Input: 101
# Output: true
def exercise_21(number)
    (number - 100).abs <= 10 || (number - 200).abs <= 10
end

# Write a Ruby program to compute the sum of the two integers, if the two values are equal return double their sum otherwise return their sum
# Input: (2, 3)
# Output: 5
def exercise_22(number_1, number_2)
    number_1 == number_2 ? 2 * (number_1 + number_2) : (number_1 + number_2)
end

# Write a Ruby program to print "Ruby Exercises" 9 times.
def exercise_23
    9.times { p "Ruby exercises"}
end

# Write a Ruby program to create a new string from a given string with the last character added at the front 
# and back of the given string. The length of the given string must be 1 or more.
# Input: "abc"
# Output: "cabcc"
def exericse_24(string_input)
    return false if string_input.length < 1
    string_input[-1] << string_input << string_input[-1]
end

# Write a Ruby program to check two temperatures and return true if one is less than 0 and the other is greater than 100.
# Input: (-1, 101)
# Output: true
def exercise_25(temperature_1, temperature_2)
    return true if temperature_1 < 0 && temperature_2 > 100 || temperature_1 > 100 && temperature_2 < 0
    false
end

# Write a Ruby program to print 34 upto 41.
def exercise_26
    (34..41).each { |number| p number}
end

# Write a Ruby program to print even numbers from 1 to 10.
def exercise_27
    (1..10).each { |number| p number if number.even?}
end

# Write a Ruby program to print odd numbers from 10 to 1.
def exercise_28
    count = 9
    while count >= 1 do
        p count if count.odd?
        count -= 1
    end
end

# Write a Ruby program to print the elements of a given array.
def exercise_29(array_input)
    array_input.each { |element| p element}
end

# Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.
# Input: (21, 11)
# Output: true
def exercise_30(number_1, number_2)
    number_1.to_s[-1] == number_2.to_s[-1] ? true : false
end

# Write a Ruby program to retrieve the total marks where subject name and marks of a student stored in a hash.
# Input: {a: 10, b: 20}
# Output: 30
def exercise_31(hash)
    hash.values.reduce(0, :+)
end

# Write a Ruby program to print a specified character twenty times.
# Input: '*'
# Output: "********************"
def exercise_32(character)
    p character * 20
end

# Write a Ruby program to test whether a year is leap year or not.
# Input: 2012
# Output: "2012 is leap year"
def exercise_33(year)
    (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0) ? ("#{year} is leap year") : ("#{year} is not leap year")
end

# Write a Ruby program to check whether a string 'Java' appears at index 1 in a given sting, 
# if 'Java' appears return the string without 'Java' otherwise return the string unchanged.
# Input: "abd"
# Output: "abd"
def exercise_34(string_input)
    return string_input[5..-1] if string_input[1..4] == "Java"
    string_input
end

# Write a Ruby program to create a string using the first two characters (if present) of a given string
# if the first character is 'p' and second one is 's' otherwise return a blank string.
# Input: "psg"
# Output: "ps"
def exercise_35(string_input)
    return "ps" if string_input.start_with?("ps")
    ""
end

# Write a Ruby program to check two integers and return whichever value is nearest to the value 10, or return 0 if two integers are equal
# Input: (3, 3)
# Output: 0
def exercise_36(number_1, number_2)
    return 0 if number_1 == number_2
    return number_1 if (number_1 - 10).abs <(number_2 - 10).abs
    number_2
end

# Write a Ruby program to check two integer values and return true if they are both in the range 10..20 inclusive, or they are both in the range 20..30 inclusive.
# Input: (11, 12)
# Output: true
def exercise_37(number_1, number_2)
    return true if (10..20).include?(number_1) && (10..20).include?(number_2)
    return true if (20..30).include?(number_1) && (20..30).include?(number_2)
    false
end

# Write a Ruby program to check two positive integer values and return the larger value that is in the range 20..30 inclusive, or return 0 if no number is in that range.
# Input: (3, 4)
# Output: 0
def exercise_38(number_1, number_2)
    if (20..30).include?(number_1)
        if (20..30).include?(number_2) && number_2 > number_1
            return number_2
        else
            return number_1
        end
    elsif (20..30).include?(number_2)
        return number_2
    end
    0
end

# Write a Ruby program to check a given string contains 'i' characters.
# Input: "ai"
# Output: true
def exercise_39(input_string)
    return true if input_string.downcase.include?('i')
    false
end

# Write a Ruby program to create a new string taking every other character starting with the first of a given string.
# Input: "abcdefgij"
# Output: "acegj"
def exercise_40(input_string)
    result = ""
    input_string.chars.each_with_index {|character, index| result << character if index % 2 == 0}
    result
end

# Write a Ruby program to count the number of 5's in a given array.
# Input: [1, 2, 3]
# Output: 0
def exercise_41(input_array)
    count = 0
    input_array.each {|number| count += 1 if number == 5}
    count
end

# Write a Ruby program to check whether one of the first 5 elements in a given array of integers is a 7. The array length may be less than 5
# Input: [0, 7, 1, 2, 3]
# Output: 1
def exercise_42(input_array)
    count = 0
    if input_array.size < 5
        input_array.each {|number| count += 1 if number == 7}
    else
        (0..5).each {|index| count += 1 if input_array[index] == 7}
    end
    count
end

# Write a Ruby program to check whether the sequence of numbers 10, 20, 30 appears anywhere in a given array of integers.
# Input: [10, 20, 30, 11]
# Output: true
def exercise_43(input_array)
    (0...input_array.size).each {|index| return true if input_array[index..index+2] == [10,20,30]}
    false
end

# Write a Ruby program to compute and print the sum of two given integers, print 30 if the sum is in the range 20..30 (inclusive).
# Input: (9, 7)
# Output: 16
def exercise_44(number_1, number_2)
    (20..30).include?(number_1 + number_2) ? 30 : (number_1 + number_2)
end

# Write a Ruby program to check two given integers and return true if either one is 11 or their sum or difference is 11 otherwise return false.
# Input: (11, 1)
# Output: true
def exercise_45(number_1,number_2)
    number_1 == 11 || number_2 == 11 || number_1+ number_2 ==11 || number_1- number_2 == 11
end

# Write a Ruby program to check a given non-negative number and return true if number is within 2 of a multiple of 10.
# Input: 12
# Output: true
def exercise_46(number)
    number % 10 <= 2 || number %10 >= 8
end

# Write a Ruby program to check three given integers and return true if it is possible to add two of the integers to get the third
# Input: (1, 2, 3)
# Output: true
def exercise_47(number_1, number_2, number_3)
    (number_1 + number_2 == number_3) || (number_1 + number_3 == number_2) || (number_2 + number_3 == number_1)
end

# Write a Ruby program to check three given integers and return true if two or more of them have the same rightmost digit.
# Input: (1, 2, 3)
# Output: false
def exercise_48(number_1, number_2, number_3)
    digit_1 = number_1.to_s[-1]
    digit_2 = number_2.to_s[-1]
    digit_3 = number_3.to_s[-1]
    return true if digit_1 == digit_2 || digit_1 == digit_3 || digit_2 == digit_3
    false
end

# Write a Ruby program to check three given integers and return true if one of them is 20 or more less than one of the others.
# Input: (10, 20, 30)
# Output: true
def exercise_49(number_1, number_2, number_3)
    (number_1 - number_2).abs <= 20 || (number_1 - number_3).abs <= 20 || (number_2 - number_3).abs <= 20
end

# Write a Ruby program to check two given integers and return the larger value. However if the two values have the same remainder 
# when divided by 5 then return the smaller value and if the two values are the same, return 0.
# Input: (10, 10)
# Output: 0
def exercise_50(number_1, number_2)
    return 0 if number_1 == number_2
    (number_1 > number_2) && (number_1 % 5 == number_2 % 5) ? (return number_2) : (return number_1)
    number_1 > number_2 ? (return number_1) : (return number_2)
end

# Write a Ruby program to check two given integers, each in the range 10..99, return true if there is a digit that appears in both numbers.
# Input: (11, 21)
# Output: true
def exercise_51(number_1, number_2)
    return false if !(10..99).include?(number_1) || !(10..99).include?(number_2)
    digit_1 = number_1.to_s[-1]
    digit_2 = number_2.to_s[-1]
    number_1 = number_1.to_s[0]
    number_2 = number_2.to_s[0]
    digit_1 == digit_2 || digit_1 == number_2 || digit_2 == number_1 || number_1 == number_2
end

# Write a Ruby program to check three given integers and return their sum. However, If one of the values is 
# the same as another of the values, it does not count towards the sum.
# Input: (5, 5, 5)
# Output: 0
def exercise_52(number_1, number_2, number_3)
    return 0 if number_1 == number_2 && number_1 == number_3
    return number_1 if number_2 == number_3
    return number_2 if number_1 == number_3
    return number_3 if number_2 == number_1
    number_1 + number_2 + number_3
end

# Write a Ruby program to check three given integers and compute their sum. However,
# if one of the values is 17 then it does not count towards the sum and values to its right do not count.
# Input: (5, 5, 5)
# Output: 15
def exercise_53 (number_1, number_2, number_3)
    return 0 if number_1 == 17
    return number_1 if number_2 == 17
    return number_1 + number_2 if number_3 == 17
    number_1 + number_2 + number_3
end

# Write a Ruby program to check three given integers x, y, z and return true if one of y or z is close (differing from a by at most 1),
# while the other is far, differing from both other values by 3 or more.
# Input: (2, 3, 11)
# Output: true
def exercise_54 (x,y,z)
    return false if (y-z).abs < 3
    (x-y).abs <= 1 && (x-z).abs >= 3 || (x-z).abs <= 1 && (x-y).abs >= 3
end

# Write a Ruby program to check three given integers (one of them is small, one is medium and one is large) and return true 
# if the three values are evenly spaced, so the difference between small and medium is the same as the difference between medium and large.
# Input: (5, 10, 15)
# Output: true
def exercise_55 (number_1, number_2, number_3)
    array_sort = [number_1, number_2, number_3].sort
    (array_sort[1] - array_sort[0]).abs == (array_sort[2]-array_sort[1]).abs
end