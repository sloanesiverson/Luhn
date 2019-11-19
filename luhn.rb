require "byebug"
module Luhn
  def self.is_valid?(number)
    answer = []
    digits = number.to_s
    digits = digits.split("").map {|x| x.to_i}.reverse
    digits.each_with_index {|n, id| 
      if id.odd?
        answer << n * 2  
      else
        answer << n
      end
    }

    answer = answer.map { |n|
      if n >= 10
        n - 9
      else
        n
      end
    }
    
    answer = answer.inject(:+)

    answer % 10 == 0
    
  end



end

















puts Luhn.is_valid?(4194560385008505)
puts Luhn.is_valid?(4194560385008504)
