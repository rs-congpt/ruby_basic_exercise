# Write a Ruby program to check whether a value exists in an array.
# Input: (["abc", "def", "bbb"], "abc")
# Output: true
def exercise_1(array_input, value_check)
    array_input.include?(value_check)
end

# Write a Ruby program to check whether 7 appears as either the first or last element in a given array. The array length must be 1 or more
# Input: [7, 1, 2, 3]
# Output: true
def exercise_2(array_input)
    return false if array_input.size == 0
    array_input[0] == 7 || array_input[-1] == 7
end

# Write a Ruby program to check whether first and the last element are the same of a given array of integers. The array length must be 1 or more.
# Input: ([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3)
# Output: [8, 2, 9]
def exercise_3(array_input, count)
    array_input.sample(count)
end

# Write a Ruby program to check whether first and the last element are the same of a given array of integers. The array length must be 1 or more.
# Input: [1, 2, 3, 1]
# Output: true
def exercise_4(array_input)
    return false if array_input.size == 0
    array_input[0] == array_input[-1]
end

# Write a Ruby program to compute the sum of elements in a given array.
# Input: [1, 2, 3]
# Output: 6
def exercise_5(array_input)
    array_input.reduce(0, :+)
end

# Write a Ruby program to remove duplicate elements from a given array.
# Input: [1, 2, 3, 1]
# Output: [1, 2, 3]
def exercise_6(array_input)
    array_input.uniq
end

#  Write a Ruby program to check two given arrays of integers and test whether they have 
# the same first element or they have the same last element. Both arrays length must be 1 or more
# Input: ([1, 2, 3], [1, 4, 3])
# Output: true
def exercise_7(array_input_1, array_input_2)
    return false if array_input_1.size < 1 || array_input_2.size < 1
    array_input_1[0] == array_input_2[0] || array_input_1[-1] == array_input_2[-1]
end

# Write a Ruby program to remove blank elements from a given array.
# Input: ["Red", "Green", "", "Blue", "White"]
# Output: ["Red", "Green", "Blue", "White"]
def exercise_8(array_input)
    array_input.delete("")
    array_input.compact
end

# Write a Ruby program to compute the sum of all the elements. The array length must be 3 or more.
def exercise_9(array_input)
    return "The array length must be 3 or more" if array_input.size < 3
    return array_input.reduce(0, :+)
end

# Write a Ruby program to split a delimited string into an array.
# Input: "Red, Green, Blue, White"
# Output: ["Red", " Green", " Blue", " White"]
def exercise_10(string_input)
    string_input.split(", ")
end

# Write a Ruby program to create an array with the elements "rotated left" of a given array of ints length 3.
# Input: [1, 2, 3]
# Output: [2, 3, 1]
def exercise_11(array_input)
    return [array_input[1], array_input[2], array_input[0]]
end

# Write a Ruby program to create a new array with the elements in reverse order from a given an array of integers length 3.
# Input: [1, 2, 3]
# Output: [3, 2, 1]
def exercise_12(array_input)
    array_input.reverse
end

# Write a Ruby program to find the larger between the first and last elements of a given array of integers of length 3.
# Replace all the other values to be that value. Return the changed array.
# Input: [1, 2, 3]
# Output: [3, 3, 3]
def exercise_13(array_input)
    max = array_input[0] > array_input[-1] ? array_input[0] : array_input[-1]
    return [max, max, max]
end

# Write a Ruby program to compute the sum of the first 2 elements of a given array of integers. If the array length is less than 2, 
# just sum up the elements that exist, returning 0 if the length of the array is 0
# Input: [1, 3, 4]
# Output: 4
def exercise_14(array_input)
    return 0 if array_input.size == 0
    return array_input.reduce(0, :+) if array_input.size < 2
    return array_input[0] + array_input[1]
end

# Write a Ruby program to create an array of length 2 containing their middle elements from two given arrays of integers of length 3
# Input: ([1, 2, 3], [3, 3, 3])
# Output: [2, 3]
def exercise_15(array_input_1, array_input_2)
    return "Array input 1 must be have length 3" if array_input_1.size < 3
    return "Array input 2 must be have length 3" if array_input_2.size < 3
    return [array_input_1[1], array_input_2[1]]
end

# Write a Ruby program to concatenate array of arrays into one.
# Input: [10, 20, [30, [40, 50]]]   
# Output: [10, 20, 30, 40, 50]
def exercise_16(array_input)
    array_input.flatten
end

# Write a Ruby program to check whether a given array of integers of length 2 contains a 4 or a 7.
# Input: [3, 4]
# Output: true
def exercise_17(array_input)
    return "Array input must be have length 2" if array_input.size < 2
    return array_input.include?(4) || array_input.include?(7)
end

# Write a Ruby program to check whether a given array of integers of length 2 does not contain a 6 or a 9.
# Input: [3, 4]
# Output: true
def exercise_18(array_input)
    return "Array input must be have length 2" if array_input.size < 2
    return !array_input.include?(6) && !array_input.include?(9)
end

# Write a Ruby program to check whether a given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2.
# Input: [3, 3]
# Output: true
def exercise_19(array_input)
    return false if array_input.size < 2
    return true if array_input[0] == 5 && array_input[1] == 5 || array_input[0] == 3 && array_input[1] == 3
    return false
end

# Write a Ruby program to set 5 to 1 if there is a 3 immediately followed by a 5 in a given array of integers (length 3).
# Input: [3, 5, 1]
# Output: [3, 1, 1]
def exercise_20(array_input)
    return "Array input must be have length 3" if array_input.size < 3
    array_input[1] = 1 if array_input[0] == 3 && array_input[1] == 5
    array_input[2] = 1 if array_input[1] == 3 && array_input[2] == 5
    return array_input
end

# Write a Ruby program to compute the sum of two arrays (length 3) and return the array which has the largest sum.
# Input: ([3, 5, 1], [1, 1, 1])
# Output: [3, 5, 1]
def exercise_21(array_input_1, array_input_2)
    sum_1 = array_input_1.reduce(0, :+)
    sum_2 = array_input_2.reduce(0, :+)
    return array_input_1 if sum_1 > sum_2
    return array_input_2
end

# Write a Ruby program to create a new array of length 2 containing the middle two elements from a given array of integers of even length 2 or more.
# Input: ([1, 3, 5, 4])
# Output: [3, 5]
def exercise_22(array_input)
    return "Array input must be have even length 2" if array_input.size % 2 == 1
    middle = array_input.size / 2
    return array_input[middle-1..middle]
end

# Write a Ruby program to create a new array of length 4 containing all their elements from two array of integers, length 2.
# Input: ([1, 2], [3, 4])
def exercise_23(array_input_1, array_input_2)
    (array_input_1 << array_input_2).flatten
end

# Write a Ruby program to swap the first and last elements of a given array of integers, length will be at least 1. Return the modified array.
# Input: [1, 3]
# Output: [3, 1]
def exercise_24(array_input)
    return "Array input must be have even length least 1" if array_input.size < 1
    array_input[0], array_input[-1] = array_input[-1], array_input[0]
    array_input
end

# Write a Ruby program to create a new array of length 3 containing the elements from the middle of a given array of integers of odd length (at least 3).
# Input: [2, 3, 7]
# Output: [2, 3, 7]
def exercise_25(array_input)
    return "Array input must be have odd length least 3" if array_input.size < 3 || array_input.size % 2 == 0
    middle = array_input.size / 2
    return [array_input[middle - 1], array_input[middle], array_input[middle + 1]]
end

# Write a Ruby program to find the largest value from a given array of integers of odd length. The array length will be a least 1.
# Input: [2, 3, 7]
# Output: 7
def exercise_26(array_input)
    return "Array input must be have odd length 3" if array_input.size % 2 == 0
    return array_input.max
end

# Write a Ruby program to create a new array using first three elements of a given array of integers. 
# If the length of the given array is less than three return the original array.
# Input: [2, 3, 4, 5]
# Output: [2, 3, 4]
def exercise_27(array_input)
    return array_input if array_input.size < 3
    return array_input[0...3]
end

# Write a Ruby program to create a new array with the first element of two arrays. If length of any array is 0, ignore that array.
# Input: ([2, 3, 4], [3, 4, 5])
# Output: [2, 3]
def exercise_28(array_input_1, array_input_2)
    return [] if array_input_1.size == 0 && array_input_2.size == 0
    return [array_input_1[0]] if array_input_2.size == 0
    return [array_input_2[0]] if array_input_1.size == 0
    return [array_input_1[0], array_input_2[0]]
end

# Write a Ruby program to get the number of even integers in a given array.
# Input: [2, 2, 3]
# Output: 2
def exercise_29(array_input)
    count = 0
    array_input.each {|element| count += 1 if element.even?}
    count
end

# Write a Ruby program to find the difference between the largest and smallest values of a given array of integers and length 1 or more.
# Input: [1, 2, 3]
# Output: 2
def exercise_30(array_input)
    return "Array input must be have length least 1" if array_input.size < 1
    return array_input.max - array_input.min
end

# Write a Ruby program to compute the average values of a given array of except the largest and smallest values. The array length must be 3 or more.
# Input: [1, 2, 3]
# Output: 2.0
def exercise_31(array_input)
    return "Array input must be have length least 3" if array_input.size < 3
    return (array_input.sum - array_input.max - array_input.min).to_f / (array_input.size - 2)
end

# Write a Ruby program to compute the sum of the numbers of a given array except 
# the number 17 and numbers that come immediately after a 17. Return 0 for an empty array.
# Input: [1, 2, 17, 2, 1]
# Output: 4
def exercise_32(array_input)
    return 0 if array_input.size == 0
    sum = 0
    index = 0
    while index < array_input.size
        if array_input[index] == 17
            index += 2
            next
        end
        sum += array_input[index]
        index += 1
    end
    sum
end

# Write a Ruby program to check whether the sum of all the 3's of a given array of integers is exactly 9.
# Input: [3, 3, 3]
# Output: true
def exercise_33(array_input)
    sum = 0
    array_input.each {|number| sum += number if number == 3}
    return true if sum == 9
    return false
end

# Write a Ruby program to check whether the number of 2's is greater than the number of 5's of a given array of integers.
# Input: [2, 3, 2, 5]
# Output: true
def exercise_34(array_input)
    count = 0
    array_input.each do |number|
        count += 1 if number == 2
        count -= 1 if number == 5
    end
    return true if count > 0
    return false
end

# Write a Ruby program to check whether every element is a 3 or a 5 in a given array of integers.
# Input: [3, 3]
# Output: true
def exercise_35(array_input)
    return false if array_input.size == 0
    array_input.each { |number| return false if (number != 3 && number != 5)}
    return true
end

# Write a Ruby program to check whether it contains no 3 or it contains no 5.
# Input: [3, 7, 3, 3]
# Output: true
def exercise_36(array_input)
    flag_3 = true
    flag_5 = true
    (0..array_input.size - 1).each do |index|
        flag_3 = false if array_input[index] == 3
        flag_5 = false if array_input[index] == 5
    end
    return flag_3 || flag_5
end

# Write a Ruby program to check whether a given value appears everywhere in a given array. 
# A value is "everywhere" in an array if it presents for every pair of adjacent elements in the array.
# Input: ([3, 7, 3, 3], 3)
# Output: true
def exercise_37(array_input, value)
    (0...array_input.size - 1).each do |index|
        if array_input[index] != value && array_input[index + 1] != value
            return false
        end
    end
    return true
end

# Write a Ruby program to check whether a given array contains a 3 next to a 3 or a 5 next to a 5, but not both.
# Input: [3, 3, 7, 5]
# Output: true
def exercise_38(array_input)
    flag_3 = true
    flag_5 = true
    (0...array_input.size - 1).each do |index|
        flag_3 = false if array_input[index] == 3 && array_input[index + 1] == 3
        flag_5 = false if array_input[index] == 5 && array_input[index + 1] == 5
    end
    return flag_3 ^ flag_5
end

# Write a Ruby program to check whether a given array of integers contains two 6's next to each other, 
# or there are two 6's separated by one element, such as [6, 2, 6]
# Input: [6, 3, 6, 5]
# Output: true
def exercise_39(array_input)
    return false if array_input.size < 2
    if array_input.size == 2
        array_input[0] == 6 && array_input[1] == 6 ? (return true) : (return false)
    end
    (0...array_input.size - 2).each do |index|
        return true if array_input[index] == 6 && array_input[index + 1] == 6
        return true if array_input[index] == 6 && array_input[index + 2] == 6
        return true if array_input[index + 1] == 6 && array_input[index + 2] == 6
    end
    return false
end

# Write a Ruby program to check whether there is a 2 in the array with a 3 somewhere later in a given array of integers.
# Input: [6, 2, 3, 5]
# Output: true
def exercise_40(array_input)
    flag_2 = false
    flag_3 = false
    array_input.each do |number|
        flag_2 = true if number == 2
        flag_3 = true if number == 3 && flag_2 == true
        break if flag_3 == true
    end
    return flag_2 && flag_3
end

# Write a Ruby program to check whether the value 2 appears in a given array of integers exactly 2 times, and no 2's are next to each other.
# Input: [2, 1, 2, 5, 6]
# Output: true
def exercise_41(array_input)
    count = 0
    (0...array_input.size - 1).each do |index|
        count += 1 if array_input[index] == 2
        return false if array_input[index] == 2 && array_input[index+1] == 2
    end
    count += 1 if array_input[array_input.size - 1] == 2
    return true if count == 2
    return false
end

# Write a Ruby program to convert an array into an index hash.
# Input: [10, 20, 30, 40]
# Output: {10=>nil, 20=>nil, 30=>nil, 40=>nil}
def exercise_42(array_input)
    hash = {}
    array_input.each { |element| hash[element] = nil}
    hash
end

# Write a Ruby program to find most occurred item in a given array.
# Input: [10, 20, 30, 40, 10, 10, 20]
# Output {10=>3, 20=>2, 30=>1, 40=>1}
def exercise_43(array_input)
    hash = Hash.new(0)
    array_input.each { |element| hash[element] += 1}
    hash
end

# Write a Ruby program to check whether all items are identical in a given array.
# Input: [10, 10, 10]
# Output: true
def exercise_44(array_input)
    return true if array_input.size < 2
    compare_number = array_input[0]
    array_input.each { |number| return false if compare_number != number}
    return true
end

# Write a Ruby program to search items start with specified string of a given array.
# Input: (["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"], "ab")
# Output: ["abcde", "abdf", "abdgse"]
def exercise_45(array_input, search_keyword)
    result = []
    array_input.each { |element| result << element if element.start_with?(search_keyword)}
    return result
end

# Write a Ruby program to iterate an array starting from the last element.
# Input: [10, 20]
# Output: 10
#         20
def exercise_46(array_input)
    array_input.reverse.each {|number| p number}
end

# Write a Ruby program to iterate over the first n elements of a given array.
# Input: ([10, 20, 30, 40, 10, 10, 20], 3)
# Output: [10, 20, 30]
def exercise_47(array_input, n)
    array_input.first(n)
end

# Write a Ruby program to sort a given array of strings by length.
# Input: ["abcde", "abdf", "adeab", "abdgeee", "bdefa", "abc", "ab", "a", "bacdef"]
# Output: ["a", "ab", "abc", "abdf", "abcde", "adeab", "bdefa", "bacdef", "abdgeee"]
def exercise_48(array_input)
    array_input.sort_by {|element| element.length}
end