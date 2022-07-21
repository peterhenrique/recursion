# frozen_string_literal: true

require 'pry-byebug'

def merge_sort(arr, retorno = [], left = [], right = [])
  # binding.pry
  if arr.size < 2
    retorno = arr
  else
    i = arr.size / 2
    left = merge_sort(arr[0..i - 1])

    right = merge_sort(arr[i..])
    retorno = merger3(left, right)
  end
  # p left
  # p right
  # p merge_sort(left)
  retorno
end

def merger3(arr1, arr2, arr = [])
  (arr1.size + arr2.size).times do
    if arr1.empty?
      arr << arr2[0]
      arr2.shift
    elsif arr2.empty?
      arr << arr1[0]
      arr1.shift
    elsif arr1[0] < arr2[0]
      arr << arr1[0]
      arr1.shift
    else
      arr2[0] < arr1[0]
      arr << arr2[0]
      arr2.shift
    end
  end
  arr
end

# p merge_sort([1])
# p merge_sort([2, 1])

# p merger3([3],[2])
# p merger3([1,2,4,7],[7,8,9,10])

# merger3([1,5],[4,7])

# p merger3([1,2,4,7],[1,7,9,10,23])

p merge_sort([5, 1, 7, 4])
# p merge_sort([5, 1, 7, 4, 9, 3, 10,11])

# merger3([1,5,7], [2,4,6])
# p merger3([5, 10, 11], [3, 4, 5])

p merge_sort([1, 2, 7, 4, 23, 7, 9, 100])
p merge_sort([1, 2, 7, 4, 23, 7, 9])

p merge_sort([1, 2, 7, 4, 23, 7, 9, 10, 1])

jota = Array.new(15) { rand(1..2500) }

p jota

p merge_sort(jota)
