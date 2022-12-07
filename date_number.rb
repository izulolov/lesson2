print 'Введите число: '
number = gets.chomp.to_i

print 'Введите месяц: '
month = gets.chomp.to_i

print 'Введите год: '
year = gets.chomp.to_i

# Порядкоый номер даты
date_sequence_number = 0

# Создаем массив содержащий кол-во дней в месяце
# Пусть в феравле сначала будет 0 дней, так как не знаем високосный год или нет
array_days = [31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

# Вычислим является ли введенный год високосным или нет и
# в зависимости от этого февраль будет 28 или 29 дней
if ((year % 4).zero? && year % 100 != 0 || (year % 400)).zero?
  array_days[1] = 29
else array_days[1] = 28
end

#(year % 4).zero? && year % 100 != 0 || (year % 400).zero? ? array_days[1] = 29 : array_days[1] = 28

# map-ом проходим по месяцам и суммируем их кол-во дней за исключением
# последного месяца, так как этот месяц может быть непольной,то есть пользователь 
# ввел 17.03.2000. Поэтому последний суммурием отдельно вне цикла (1)
(0..month - 2).map { |i| date_sequence_number += array_days[i] }

# (1)
date_sequence_number += number

puts date_sequence_number
