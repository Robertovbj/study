def bubble_sort(array)
  sorted_array = array.dup
  last = array.length - 1

  until last == 0 do

    for i in 1..last do
      if sorted_array[i-1] > sorted_array[i]
        sorted_array[i-1], sorted_array[i] = sorted_array[i], sorted_array[i-1]
      end
    end

    last -= 1
  end

  sorted_array
end

array = [42, 7, 89, 23, 15, 67, 3, 91, 45, 12, 78, 34, 56, 9, 100, 28, 61, 4, 83, 37, 19, 72, 50, 8, 95, 41, 26, 63, 11, 87, 33, 76, 5, 54, 18, 92, 47, 21, 68, 39, 99, 14, 73, 44, 2, 86, 31, 57, 16, 79, 48, 93, 25, 62, 10, 81, 36, 69, 43, 77, 1, 55, 29, 84, 38, 66, 13, 97, 46, 22, 71, 52, 85, 30, 64, 17, 98, 40, 24, 75, 51, 88, 6, 70, 35, 94, 49, 27, 82, 32, 60, 96, 53, 20, 74, 80, 58, 90, 59, 65, 10, 99]
puts bubble_sort(array)