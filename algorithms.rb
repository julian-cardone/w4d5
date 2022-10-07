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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_1(list)

def my_min_2(arr)
    smallest = arr.first
    arr.each do |ele|
        smallest = ele if ele < smallest
    end
    return smallest
end

p my_min_2(list)