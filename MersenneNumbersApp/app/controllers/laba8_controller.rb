class Laba8Controller < ApplicationController
  def index
  end

  def calculate
    n = params[:n].to_i
    @mersennes = []
    (2..n).each do |p|
      mersenne = 2**p - 1
      @mersennes << { p: p, mersenne: mersenne } if is_prime?(p) && is_prime?(mersenne)
    end
    @count = @mersennes.size
  end

  private

  def is_prime?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end
end

