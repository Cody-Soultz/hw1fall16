# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort{|x,y|y<=>x}[0..1])
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2).map{|permutationsOfTwo| sum(permutationsOfTwo)}.include?(n)
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #s =~ /\A[01]*1+[01]*00\z/ #This should be more correct since I think 0 should not be a 
                             #multible of 4
  s =~ /\A([01]*00|0+)\z/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn == nil or isbn.size == 0  
      raise ArgumentError.new('ISBN Number can not be empty.')  
    end
    if price <= 0  
      raise ArgumentError.new('Price must be positive and non zero.')  
    end
    @isbn=isbn.to_s
    @price=price
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  def isbn
    @isbn
  end
  def price=(price)
    @price=price
  end
  def price
    @price
  end
  def price_as_string
    "$" + sprintf('%.2f',@price)
  end
end
