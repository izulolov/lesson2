pokupki = {}

itog_summa = 0

while true
  print "Введите название товара (стоп для завершение покупки): "
  name = gets.chomp.to_s

  #Если ввели стоп выходим из цикла
  break if name == 'stop'

  print "Цена за ед-цу товара: "
  price = gets.chomp.to_f
  
  print "Кол-во товара: "
  count = gets.chomp.to_f

  # Добавляем в хеш название, цену, кол-во и общую цену(P*C)
  pokupki[name] = {"Price" => price, "Count" => count, "P*C" => (price * count).round(2)}
end

# Вычислим итоговую сумму покупки
pokupki.each { |name, hash|  itog_summa += hash["P*C"]}

# Выводим на консоль товары 
pokupki.each { |name, hash| puts "#{name}: #{hash}" }

# и итоговую сумму
puts "Итоговая сумма покупки: #{itog_summa.round(2)}"
