def intprg_b(a, b, n)
    step= (b - a) / n.to_f
    sum = 0.0
    n.times do |i|
      x = a + i * step
      sum += yield(x)
    end
    step * sum
  end