require_relative '7-1'
puts "Вывод программы работы с файлом:"
mas=foo("7\\1\\myfile.txt")
case mas[0]
when 0
    print("Слов, начинающихся с буквы 'а' нет!")
when -1
    print("Файл не существует!!!")
else
    print("Слово с макс. длиной: #{mas[1]}, его длина: #{mas[0]}")
end