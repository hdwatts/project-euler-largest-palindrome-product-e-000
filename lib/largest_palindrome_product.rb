def largest_palindrome_product
  max = 999
  min = 100
  palindrome = -1
  
  a = max
  while a > min
    b = a
    while b > min
      palindrome = ( a * b ) if is_palindrome?(a * b) && ( a * b ) > palindrome
      b -= 1
    end

    a -= 1
  end

  palindrome
end

def is_palindrome?(input)
  input == input.to_s.reverse.to_i
end