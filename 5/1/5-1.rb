def func(x)
  x = x.to_i
  if x == 0
    return "Введите число!"
  elsif (x==5**(1/3))
    return "Деление на 0!"
  else
    return (Math.exp(x) / Math.tan(x**3 - 5) + x**2)
  end
end