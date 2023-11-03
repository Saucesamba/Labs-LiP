def foo(fname)
    if !File.exist?(fname)
      return [-1, "Файл не существует"]
    end
  
    file = File.open(fname, "r")
    content = file.read
    mas = content.split(" ")
    ml = 0
    out_word = ""
    mas.each do |word|  
      if ( (word[0] == "а" || word[0] == "a") && word.length >= ml)
        ml = word.length
        out_word = word
      end
    end
    file.close
    [ml, out_word]  
  end