require_relative '5-2'

names = []
salaries = []

loop do
  print "Введите имя сотрудника (или 'end' для завершения ввода): "
  name = gets.chomp
  break if name.downcase == 'end'
  print "Введите зарплату: "
  salary = gets.to_f
  names << name
  salaries << salary
end

print "Для вывода сведений о введенных масивах введите 'info'"
input=gets.chomp.downcase
if (input=="info")
  main(salaries,names)
end



