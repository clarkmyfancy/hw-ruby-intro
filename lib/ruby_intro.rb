# When done, submit this entire file to the autograder.

def sum arr
  sum = 0
  arr.each { |n|
    sum += n
  }
  return sum
end

def max_2_sum arr
  sum = 0
  big1 = -10000000000
  big2 = -10000000000
  a = 0
  b = 0
  index = 0

  arr.each do |n1|
    if (n1 > big1)
      big1 = n1
      a = n1
      arr.delete_at(index)
    end
    index += 1
  end 

  arr.each do |n2|
    if (n2 > big2)
      big2 = n2
      b = n2
    end 
  end 
  sum = a + b

  return sum
end

def sum_to_n? arr, n
  if (arr.empty?)
    return false
  end

  if (arr.length < 2)
    return false
  end

  arr.each do |elem|
    if (elem == n)
      return false
    end
    return arr.combination(2).any? {
      |x, y| x + y == n
    }
  end 
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s

  if s.empty?
    return false
  end

  new_s = s.downcase

  if !(new_s[0].match(/[a-z]/))
    return false
  end

  
  vowels = ['a','e','i','o','u']
  if (vowels.include? new_s[0])
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if (s == "0")
    return true
  end

  if s.empty?
    return false
  end
  
  if (s.length < 2)
    return false
  end
  
  s.each_char do |char|
    if (char.match(/[a-z]/))
      return false
    end
  end

  lastTwoChars = s[s.length-2 .. -1]
  return lastTwoChars == "00"
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    if (isbn == "")
      raise ArgumentError, "isbn was blank"
    end
    if (price <= 0)
      raise ArgumentError, "price was negative"
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    return @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    return @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    return "$" + ('%.2f' % @price).to_s
  end


end
