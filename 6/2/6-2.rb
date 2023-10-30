def func(x)
    return x**(1.5)
  end
  
  def solve(a, b, eps)

    Enumerator.new do |yielder|
      x = a
      iter_count = 0
      length = 0
      x_prev = a
      y_prev = func(a)
  
      while (x<=b)
        x += eps
        y = func(x)
        delta = Math.sqrt((x - x_prev)**2 + (y - y_prev)**2)
        length += delta
        iter_count += 1
        x_prev = x
        y_prev = y
        yielder << { iteration: iter_count, length: length } 
      end
    end
  end
  

  
  
  