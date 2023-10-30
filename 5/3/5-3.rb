# Функция для подсчета символов в строке
def count_characters(line)
  words = line.split
  char_count = Hash.new(0)
  words.each do |word|
    word.each_char do |char|
      char_count[char] += 1
    end
  end
  return char_count
end


#функция сортировки строк и их обработки
def process_and_sort_strings(strings)
  total_char_count = {}
  strings.each do |string|
    char_count = count_characters(string)
    total_count = char_count.values.sum
    total_char_count[string] = char_count
  end
  sorted_str = total_char_count.sort_by { |string, char_count| -char_count.values.sum }

  sorted_str.each do |string, char_count|
    char_count_str = char_count.map { |char, count| "#{char}: #{count}" }.join(", ")
    puts "#{string} - #{char_count_str}"
  end
end