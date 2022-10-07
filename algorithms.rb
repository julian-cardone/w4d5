def my_min_1(arr)
    arr.each do |ele1|
        smallest = true
        arr.each do |ele2|
            if ele1 > ele2
                smallest = false
            end
        end
        return ele1 if smallest == true
    end
end

#list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#p my_min_1(list)

def my_min_2(arr)
    smallest = arr.first
    arr.each do |ele|
        smallest = ele if ele < smallest
    end
    return smallest
end

#p my_min_2(list)

def subsum_1(arr)
    sum_arr = []
    i = 0
    while i < arr.length do
        j = i
        while j < arr.length do
            current_arr = []
            (i..j).each do |num|
                current_arr << arr[num]
            end
            sum_arr << current_arr
            j += 1
        end
        i += 1
    end
    # p sum_arr
    counter = arr.first
    sum_arr.each do |sub_arr|
        counter = sub_arr.sum if sub_arr.sum > counter
    end
    counter
end

# list = [5, 3, -7]
# p subsum_1(list) # => 8

def anagram_1?(str1,str2)
    str1 = str1.split("")
    perm_arr = str1.permutation.to_a
    perm_arr.include?(str2.split(""))
end

# p anagram_1?("gizmo", "sally")    #=> false
# p anagram_1?("elvis", "lives")    #=> true

def anagram_2?(str1,str2)
    str2 = str2.split("")
    str1.each_char do |char|
        idx = str2.find_index(char)
        return false if idx.nil?
        str2.delete_at(idx)
    end
    true if str2.length == 0
end

# p anagram_2?("gizmo", "sally")    #=> false
# p anagram_2?("elvis", "lives")    #=> true

def anagram_3?(str1,str2)
    str1.split("").sort == str2.split("").sort
end

def anagram_4?(str,str2)
    hash = Hash.new(0)
    str.each_char do |char|
        hash[char] += 1
    end
    str2.each_char do |char|
        hash[char] -= 1
    end
    hash.values.none?{|n| n > 0}
end

p anagram_4?("gizmo", "sally")    #=> false
p anagram_4?("elvis", "lives")    #=> true