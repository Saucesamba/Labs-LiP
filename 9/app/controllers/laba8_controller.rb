class Laba8Controller < ApplicationController
  def index
    @mersennes = []
    @count = 0

    if params[:n].present?
      n = params[:n]

      if valid_input?(n)
        n = n.to_i
        @mersennes = calculate_mersennes(n)
        @count = @mersennes.size
      else
        flash.now[:alert] = 'Пожалуйста, введите положительное целое число от 1 до 60.'
      end

      respond_to do |format|
        format.html
        format.js
      end
    else
      respond_to do |format|
        format.html
      end
    end
  end

  private

  def valid_input?(n)
    stripped_n = n.strip
    stripped_n =~ /\A[1-9]\d*\z/ && stripped_n.to_i <= 60
  end
  
  

  def calculate_mersennes(n)
    result = []
    (2..n).each do |p|
      mersenne = 2**p - 1
      result << { p: p, mersenne: mersenne } if is_prime?(p) && is_prime?(mersenne)
    end
    result
  end

  def is_prime?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end
end
