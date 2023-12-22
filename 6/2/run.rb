require_relative '6-2'
puts "Введите границы интегрирования от большей к меньшей"
input=gets.chomp  
a=input.to_f
input=gets.chomp  
b=input.to_f

e = 1e-3
enumerator = solve(a,b , e)
enumerator.each do |result|
    puts "Кол-во итераций при е=#{e}: #{result[:iteration]}. Длина кривой: #{result[:length]}"
end