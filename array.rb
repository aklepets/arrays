require 'csv'

# read csv to arrays
a = CSV.read("a.csv")
b = CSV.read("b.csv")

puts "elements present in array B and NO in A are "
#find what we have in B array and not have in A array
diff = b.map{|k,v| [k,v.downcase]} - a.map{|k,v| [k,v.downcase]}

diff.each do |sub_array|
  p sub_array
end

puts ""
puts "elements present in array A and NO in B are "
#find what we have in A array and not have in B array
diff2= a.map{|k,v| [k,v.downcase]} - b.map{|k,v| [k,v.downcase]}
diff2.each do |sub_array|
  p sub_array
end
puts ""