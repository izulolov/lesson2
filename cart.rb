pokupki = {}

sum = 0

loop do
  print 'Введите название товара (стоп для завершение покупки): '
  name = gets.chomp.to_s

  #Если ввели стоп выходим из цикла
  break if name == 'stop'

  print 'Цена за ед-цу товара: '
  price = gets.chomp.to_f
  
  print 'Кол-во товара: '
  count = gets.chomp.to_f

  # Добавляем в хеш название, цену
  pokupki[name] = { price: price, count: count }
end

# Выводим на консоль товары итоговую сумму за каждый товарь
puts 'Ваш чек:'
pokupki.each { |name, values| puts "#{name}: #{values} итого: #{(values[:count] * values[:price]).round(2)}" }

# Итоговая сумма за покупку
puts "Итоговая сумма за покупку #{pokupki.values.sum { |value| (value[:price] * value[:count]).round(2) }}"
