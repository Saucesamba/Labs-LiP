def func(x)
    return x**(1.5)
end

def solve(a,b,eps)
    x=a
    iter_count=0
    length=0
    x_prev=a
    y_prev=func(a)
    while (x<b) do
       x+=eps
       y=func(x)
       delta=Math.sqrt((x-x_prev)**2+(y-y_prev)**2)
       length+=delta
       iter_count+=1
       x_prev=x
       y_prev=y
    end
    return "Кол-во итераций при е=#{eps}: #{iter_count}. Длина кривой: #{length}"
    end
