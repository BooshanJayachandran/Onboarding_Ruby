# frozen_string_literal: true
def top_k_frequent(arr, k)
  a = arr.each_with_object(Hash.new(0)) { |n,h| h[n] += 1 }
  b = a.sort_by { |_, count| -count }
  c = b.first(k).map(&:first)
end

arr = []
puts "Enter the number of elements in the array:"
n = gets.chomp.to_i

puts "Enter the elements of the array:"
for i in (0...n)
  arr[i] = gets.chomp.to_i
end

puts "Enter the value of k:"
k = gets.chomp.to_i

c = top_k_frequent(arr, k)
puts "Top #{k} most frequent : #{c.join(', ')}"