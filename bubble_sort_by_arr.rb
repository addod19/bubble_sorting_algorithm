# frozen_string_literal: true

def bubble_sort_by(arr)
  n = arr.length

  if block_given?
    loop do
      swapped = false

      (n - 1).times do |i|
        if yield(arr[i], arr[i + 1]).positive?
          swapped = true
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
        end
      end
      break unless swapped
    end
  end
  arr
end

greetings = %w[hi hello hey]

print bubble_sort_by(greetings) { |left, right| left.length - right.length }
