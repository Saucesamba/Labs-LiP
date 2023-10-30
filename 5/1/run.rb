require_relative '5-1'

loop do
  print "Введите число для вычислений или 'exit' для выхода: "
  input = gets.chomp

  if input.downcase == 'exit'
    puts "Программа завершена."
    break
  end
  result = func(input)
  puts "Результат: #{result}"
end