require_relative '6-1'
puts "Введите границы интегрирования от большей к меньшей, а также точность, которую хотите получить"
input=gets.chomp  
a=input.to_f
input=gets.chomp  
b=input.to_f
input=gets.chomp  
e=input.to_f
mas=solve(a,b,e)
puts "Длина кривой при точности e: #{mas[0]}, равна #{mas[2]}, кол-во итераций: #{mas[1]}"


