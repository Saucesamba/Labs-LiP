def func(x)
  x = x.to_i
  case x
    when 0 
      "Введите число!"
    when 5**(1/3)
      "Деление на 0!"
    else
      return (Math.exp(x) / Math.tan(x**3 - 5) + x**2)
  end
end