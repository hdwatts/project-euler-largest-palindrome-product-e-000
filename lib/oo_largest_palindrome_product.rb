# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize()
  end

  def answer
    num1 = 999
    num2 = 999
    palindrome = -1
    largest = -1
    min = 900 #performance saving number, no need to go lower since we just want the largest palindrome

    while num1 > min
      while num2 > min
        palindrome = is_palindrome?(num1 * num2)
        largest = palindrome if palindrome > largest
        num2 -= 1
      end
      num2 = 999
      num1 -= 1
    end

    largest
  end

  def is_palindrome?(input)
    forwards = "#{input}"
    backwards = forwards.reverse

    if backwards == forwards
      input
    else
      -1
    end
  end
end