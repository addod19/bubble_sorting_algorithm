def bubble_sort_by arr

    n = arr.length

    if block_given?
        loop do
            swapped = false

            (n-1).times do | i |
                if yield(arr[i], arr[i+1]) > 0
                    swapped = true
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                end
            end
            break if not swapped
        end
    end
    arr


end

greetings = ["hi", "hello", "hey"]

print bubble_sort_by(greetings) { | left,right | left.length - right.length }