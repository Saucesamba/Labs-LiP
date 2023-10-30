def intprg_l(a, b, n, func)
    step = (b - a) / n.to_f
    sum = 0.0
    n.times do |i|
      x = a + i * step
      sum += func.call(x)
    end
    step * sum
  end
