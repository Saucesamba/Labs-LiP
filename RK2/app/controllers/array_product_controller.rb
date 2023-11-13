# app/controllers/array_product_controller.rb

class ArrayProductController < ApplicationController
  def index
    # Установка значений по умолчанию для формы ввода массива
    @default_values = [1, 2, 3, 4, 5, 6]
  end

  def calculate
    input_array = params[:input_array].split(',').map(&:strip)
    k = params[:k].to_i

    # Проверки на валидность ввода
    if k < 1
      flash[:error] = 'Число k должно быть не меньше 1'
      redirect_to array_product_index_path
      return
    end

    if k > input_array.length
      flash[:error] = 'Число k не должно быть больше длины массива'
      redirect_to array_product_index_path
      return
    end

    if input_array.empty? || input_array.all?(&:empty?)
      flash[:error] = 'Массив должен содержать хотя бы одно ненулевое число'
      redirect_to array_product_index_path
      return
    end

    if not input_array.all? { |element| element.match?(/\A\d+\z/) }
      flash[:error] = 'Все элементы должны быть числами!'
      redirect_to array_product_index_path
      return
    end

    # Преобразование введенных значений в числа, игнорируя нечисловые символы
    input_array.map! { |element| element.match?(/\A\d+\z/) ? element.to_i : nil }
    input_array.compact!

    if input_array.all?(&:zero?)
      flash[:error] = 'Все числа не могут быть равны 0'
      redirect_to array_product_index_path
      return
    end
    
    # Вычисление произведения элементов массива, кратных 3
    product = input_array.select { |num| num % 3 == 0 }.reduce(:*)

    # Помещение произведения на k-е место
    input_array[k - 1] = product

    # Устанавливаем результаты для представления
    @result_array = input_array
    @k = k

    # Очищаем flash сообщение
    flash[:error] = nil
  end
end
