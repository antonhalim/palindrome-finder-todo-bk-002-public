require 'pry'
class PalindromeFinder
  attr_reader :string, :reversed_string, :long
  attr_accessor :starting, :ending, :result_array
  def initialize(string)
    @string = string
    @reversed_string = string.reverse
    @long = string.length
    @starting = 0
    @ending = 1
    @result_array = []
  end

  def get_longest_palindrome
     string_check
      !creating_array.empty? ? creating_array.max{ |a, b| a.length <=> b.length } : "no palindromes found"
  end


private
  def string_check
    return "no palindromes found" if long <= 1
  end

  def creating_array
    while self.starting < long do
      while self.ending < long do
        if self.string.include?(reversed_string[self.starting..self.ending]) && self.ending - self.starting > 2
          result_array << reversed_string[self.starting..self.ending]
        end
        self.ending += 1
      end
      self.starting +=1
      self.ending = self.starting
    end
    result_array
  end

end
