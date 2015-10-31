# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){ |acc, elem|   acc + elem } 
end

def max_2_sum arr
  arr.sort!
  first_max = arr.pop || 0
  second_max = arr.pop || 0
  first_max + second_max
end

def sum_to_n? arr, n
  candidate_values = arr.select { |elem| elem <= n }
  candidate_values.sort! { |x,y| y <=> x }
  candidate_values.each do |elem|
    if candidate_values.include?(n - elem)
      if (n - elem) == elem 
        return true if candidate_values.count(elem) > 1 
      else
        return true
      end
      
    end
  end
  false
  
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
    return false
  else
    first_letter = s[0].downcase
  end
  if /[^aeiou]/ =~ first_letter && /\w/ =~ first_letter
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s =~ /^[01]*$/ && !s.empty?   #strange behaviour normally empty strings shouldn't be passed by the regex!!
    decimal_number = s.to_i(2)
    true if decimal_number % 4 == 0
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn,price)
    @isbn = isbn_validator(isbn)
    @price = price_validator(price)
  end
  
  def isbn_validator(isbn)
    raise ArgumentError if isbn.empty?
    isbn
  end
  
  def price_validator(price)
    raise ArgumentError if price <= 0
    price
  end
  
  def price_as_string 
    "$#{"%.2f" % price}"
  end
end
