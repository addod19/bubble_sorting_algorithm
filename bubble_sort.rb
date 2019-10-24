def bubble_sort arr
    n=arr.length

    loop do
        swapped=false
        (n-1).times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swapped=true
            end
        end
        break if not swapped
    end
    arr
end

array = [7,2,7,5,1,0,4,8]

p bubble_sort array