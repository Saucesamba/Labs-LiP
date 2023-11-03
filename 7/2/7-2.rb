class Word
    def initialize(m_word)
      @word = m_word
    end
  
    def output
      puts "Слово: #{@word}"
    end
  
    def output_gl
      gl = 'AEIOUaeiou'
      k = 0
      @word.each_char do |str|
        if gl.include?(str)
          k += 1
        end
      end
      puts "Слово: #{@word}, кол-во гласных: #{k}"
    end
  end
  
  class DigitWord < Word
    def initialize(word)
      super(word)
      word.chomp
      @length = word.length
    end
  
    def output
      super
      puts "Длина слова: #{@length}"
    end
  
    def output_sogl
      sogl = "qwrtypsdfghjklzxcvbnm"
      k = 0
      @word.each_char do |str|
        if sogl.include?(str)
          k += 1
        end
      end
      puts "Кол-во согласных: #{k}"
    end
  end
  