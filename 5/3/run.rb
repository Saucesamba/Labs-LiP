require_relative '5-3'
lines = []
puts "Введите строки (для завершения ввода, нажмите Enter):"
while true
  input = gets.chomp
  break if input.empty?
  lines << input
end
process_and_sort_strings(lines)