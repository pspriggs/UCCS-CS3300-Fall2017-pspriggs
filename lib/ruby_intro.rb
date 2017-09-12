# When done, submit this entire file to the autograder.
# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each do |item|
    total += item
  end
    return total
end

def max_2_sum arr
  # YOUR CODE HERE

  total2 = 0
   if arr.length == 1 then
   total2 = arr.first
   end
  if arr.length > 0 && arr.length != 1 then
    arr.sort! { |a,b| b <=> a }
    total2 = (arr[0] + arr[1])
  end 
 return total2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  isit = false
  if arr.length == 1 || arr.length == 0 then
    return isit
  end
  
  sum3 = arr.permutation(2).to_a
  sum3.each do |item|
    total3 = 0
    total3 = item[0] + item[1]
    if total3 == n then
      return true
     break
    end
  end
   
    return isit
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  return "Hello, #{name}"
end

#starts_with_consonant? ('a')
def starts_with_consonant? s
  # YOUR CODE HERE
  t = s
  s = /\A[^\WaeiouAEIOU0-9]/.match(t) 
  if t == "" || s == nil then
    return false
  else
  return true
  end
end 

def binary_multiple_of_4? s
  # YOUR CODE HERE

  hello = s.match /[\D2-9]/
  goodbye = s.split('') 
  goodbye = goodbye.map(&:to_i)
  if hello != nil || s == "" then
    return false
else
  howlong = (goodbye.length - 1)
  puts howlong 
  longTotal = 0
  sumTotal = 0
  end
 goodbye.each do |item|
 
   if item == 1 then
   sumTotal = 2 ** howlong
   howlong -= 1
   longTotal += sumTotal
   else 
     longTotal += 0
     howlong -= 1
   end
  end
    
    puts longTotal
 if (longTotal % 4 == 0) then 
      puts true
      return true
    else
      puts "false"
      return false
 end
   
end


# Part 3

class BookInStock
# YOUR CODE HERE
 
  
  
def initialize(isbn='012' , price=1)
 
  
 @isbn = isbn
  if @isbn == "" then
    raise ArgumentError.new "ISBN cannot be empty"
  end
   @price = price
  if @price <= 0 then
    raise ArgumentError.new "Price has to be >= 0"
  end
  
  
end
 def isbn
    @isbn
    
    
 end
  def isbn=(str='1234')
    @isbn = str
    
  end
  def price
    @price
  end
  def price=(num=33.8)
    @price = num
  end
  
  def price_as_string()
    return sprintf("$%.2f", @price)
  end
end
