# frozen_string_literal: true

# bubble sort method
def bubble_sort(array)
  switch = true
  while switch
    switch = false
    (0...array.length - 1).each do |i|
      if array[i] > array[i + 1] # if this condition is not true switch maintains false
        array[i], array[i + 1] = array[i + 1], array[i]
        switch = true # loop again
      end
    end
  end
  array
end

# bubble sort by method
def bubble_sort_by(array)
  switch = true
  while switch
    switch = false
    (0...array.length - 1).each do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        switch = true
      end
    end
  end
  array
end

# tests
puts bubble_sort([4, 3, 78, 2, 0, 2])
puts bubble_sort_by(%w[hi hello hey]) { |left,right| left.length - right.length }
