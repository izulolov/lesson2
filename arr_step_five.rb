# Решение с помощью for, while и блоком{}
arr = []

# от 10 до 100 (включительно)
for i in (10..100).step(5)
  arr.push(i)
end
puts arr

=begin
while start <= finish
  arr << start
  start = start + 5
end

puts arr
=end

# (10..100).step(5){ |x| puts x } - еще одно решение
