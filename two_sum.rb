def bad_two_sum?(arr, num)
    (0...arr.length - 1).each do |n|
        (n+1..arr.length-1).each do |i|
            return true if arr[n] + arr[i] == num
        end
    end
    false
end

def okay_two_sum?(arr, num)
    found = false
    until arr.length == 1 || found == true
        first = arr.first
        last = arr.last
        sum = first + last
        case sum <=> num
        when -1
            arr.shift
        when 0
            found = true
        when 1
            arr.pop
        end
    end
    found
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false