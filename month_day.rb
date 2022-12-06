hash = { 1 => { month: 'Jan', day: 31 }, 2 => { month: 'Feb', day: 28 }, 3 => { month: 'Mar', day: 31 }, 
        4 => { month: 'Apr', day: 30 }, 5 => { month: 'May', day: 31 }, 6 => { month: 'Jun', day: 30 },
        7 => { month: 'Jul', day: 31 }, 8 => { month: 'Aug', day: 31 }, 9 => { month: 'Sep', day: 30 },
        10 => { month: 'Oct', day: 31 }, 11 => { month: 'Nov', day: 30 }, 12 => { month: 'Dec', day: 31 } }

for i in 1..12 
  if hash[i][:day] % 3 == 0
    puts hash[i][:month]
  end
end
