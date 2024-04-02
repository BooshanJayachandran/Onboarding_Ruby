# frozen_string_literal: true
def canAttend(two_d_array)
  if two_d_array.nil? || two_d_array.length==1
    true
  end
  sorted_two_d_array = two_d_array.sort_by { |sub_array| sub_array[0] }
  puts "array after sorting #{sorted_two_d_array.inspect}"
  (0...sorted_two_d_array.length - 1).each do |i|
    if sorted_two_d_array[i][1] > sorted_two_d_array[i + 1][0]
      return false
    end
  end

  return true
end
puts "no of tries"
z=gets.chomp.to_i
(0...z).each do |i|
 puts "enter the row size of array"
 a=gets.chomp.to_i
 puts "enter the column size of array"
 b=gets.chomp.to_i
 two_d_array = Array.new(a) { Array.new(b) }
 puts "enter the elements"
 (0...two_d_array.length).each do |i|
   (0...(two_d_array[i].length)).each do |j|
     two_d_array[i][j]=gets.chomp
   end
 end
 puts "array is #{two_d_array.inspect}"
 result=canAttend(two_d_array)
 puts "#{result}"
end