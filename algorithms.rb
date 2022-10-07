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

