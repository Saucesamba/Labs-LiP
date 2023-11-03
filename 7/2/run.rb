require_relative '7-2'
loop do  
    puts "Введите слово"
    str=gets.chomp.strip

    if str.downcase=="exit"
        break
    end

    print("Что вы хотите сделать: \n 1-Создать Слово \n 2-Создать слово с его длиной")
    d=gets.chomp.to_i
    case d
        when 1
            word=Word.new(str)
            word.output
            word.output_gl
        when 2
            word=DigitWord.new(str)
            word.output
            word.output_sogl
        else
            print ("Введите 1 или 2")
    end
end