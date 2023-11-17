class Laba8Controller < ApplicationController
  def index
  end

  def calculate
    n = params[:n].to_s.strip

    if valid_input?(n)
      n = n.to_i
      @mersennes = []

      (2..n).each do |p|
        mersenne = 2**p - 1
        @mersennes << { p: p, mersenne: mersenne } if is_prime?(p) && is_prime?(mersenne)
      end

      @count = @mersennes.size
      render :calculate
    else
      flash.now[:alert] = "Введите целое положительное число от 1 до 60."
      render :index
    end
  end

  private

  def is_prime?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end

  def valid_input?(n)
    n =~ /\A[1-9]\d*\z/ && n.to_i <= 60
  end
end

