input_line = gets.chomp
n = input_line.to_i
arr = []
start = 0
result = 0
while start < n do 
  num = gets.chomp.to_i
  arr.push(num)
  start += 1
end

arr.each do |num| 
  result += num
end

puts result

