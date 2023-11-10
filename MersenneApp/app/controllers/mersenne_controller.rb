class MersenneController < ApplicationController
    def input_form
    end

    def result
    end

    def calculate
        n = params[:input_n].to_i
        @results = calculate_mersenne(n)
        render 'result' # Используем render вместо redirect_to
      end
  
    private
  
    def is_prime?(number)
        return false if number <= 1
      
        (2..Math.sqrt(number)).none? { |i| (number % i).zero? }
      end
      
  
    def calculate_mersenne(n)
        results = []
        iteration = 1
      
        (2..n).each do |p|
          if is_prime?(p)
            mersenne_number = 2**p - 1
            results << { iteration: iteration, mersenne_number: mersenne_number }
            iteration += 1
          end
        end
      
        results
      end
      
  end
  