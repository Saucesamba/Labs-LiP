require_relative '6-3_lambda'
require_relative '6-3_block'

puts "Значение выражения из задания, решенного с помошью блока кода:"
int1 = intprg_b(0, 1, 100) { |x| Math.exp(x) / (x + 1) }
int2 = intprg_b(0, 2, 100) { |x| x * (x - 1) }
puts int1+int2

puts "Значение выражения из задания, решенного с помошью lambda-функции:"
int3 = intprg_l(0, 1, 100, lambda { |x| Math.exp(x) / (x + 1) })
int4 = intprg_l(0, 2, 100, lambda { |x| x * (x - 1) }) 
puts int3+int4
