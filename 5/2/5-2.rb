#функция нахождения второго максимума
def find_second_maximum(arr)
    max1 = arr[0]
    max2 = nil
    arr.each do |element|
      if element > max1
        max2 = max1
        max1 = element
      elsif element < max1 && (max2.nil? || element > max2)
        max2 = element
      end
    end
    return max2
  end

#функция нахождения среднего 
def sr_arif(mas)
  return mas.sum/mas.length
end

#функция для нахождения элемента с минимальным отклонением от среднего 
def min_otklon(mas)
  sr=sr_arif(mas)
  min_dev = (mas[0] - sr).abs
  result = mas[0]
  mas.each do |element|
    dev = (element - sr).abs
    if dev < min_dev
      min_dev= dev
      result = element
    end
  end
  return mas.index(result)
end

#функция удаления человека с минимальной зарплатой
def delete_pers(mas_sal,mas_nam)
  ind=mas_sal.index(mas_sal.min)
  mas_sal.delete_at(ind)
  mas_nam.delete_at(ind)
end

#функция выполнения действий по заданию
def main(zarp,name)
  ind_dev=min_otklon(zarp)
  print("Минимальное отклонение: ", name[ind_dev], " ", zarp[ind_dev])
  puts
  print("Самая большая зарплата: ",name[zarp.index(zarp.max)]," ",zarp.max)
  puts
  second_max = find_second_maximum(zarp)
  print("Вторая самая большая зарплата: ",name[zarp.index(second_max)]," ",second_max)
  puts
  print(zarp.min,' ',name[zarp.index(zarp.min)], " - уволен!")
  delete_pers(zarp,name)
end
