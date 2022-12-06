# Последовательность чисел Фибоначчи {Fn}
# задаётся линейным рекуррентным соотношением:
# F0=0, F1=1, Fn = Fn-1+Fn-2 для n >= 2

# Массив с первыми двумя числами Фибоначчи
fib = [0, 1]

# fn это число Фибоначчи. Пусть пока будет ноль, так как мы не знаем его значение
fn = 0

# i-й число ряда Фибоначчи, так как мы начнем с третего числа его индекс i будет 2
i = 2

loop do
  # Сначала вычислим число и проверим не больше ли 100
  # Если не больше добавляем в массив, в противном случае выходим из цикла
  fn = fib[i - 1] + fib[i - 2]
  break if fn > 100
  fib.push(fn)
  i += 1
end

puts fib