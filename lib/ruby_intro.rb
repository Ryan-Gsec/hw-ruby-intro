# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each {|x| sum = sum + x}
  return sum  
end

def max_2_sum(arr)
  arr.sort!
  arr.reverse!
  num1 = arr[0].nil? ? 0 : arr[0]
  num2 = arr[1].nil? ? 0 : arr[1]
  return num1+num2
end

def sum_to_n? arr, n
    return false if arr[1].nil?
    arr.each do |x|
	return false if x == arr[arr.length()/2+1]
	y = n - x;
	return true if arr.include?(y)
    end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
   vowel_check = "aieouAEIOU!@$%^&*()#"
   return false if s == ""
   vowel_check.length.times{|x| return false if vowel_check[x] == s[0]}
   return true
end

def binary_multiple_of_4? s
 #the instrustions for this definiton were confusing unsure if you wanted us to check if the string length was a multiple of 4 or if the decimal value of the binary string was a multiple of 4 so i checked if the decimal value was a multiple of 4
  return false if s == "" 
  s.length.times {|x|
     if s[x] == "0"
       next
     elsif s[x] == "1"
       next
     else return false
   end
   }
  z = s.to_i(2) % 4
  return true if z == 0
  return false if z > 0
end 
# Part 3

class BookInStock
   attr_accessor :isbn
   attr_accessor :price

   def initialize(isbn, price)
       @isbn = self.isbn?(isbn)
       @price = self.price?(price)
   end

   def isbn?(isbn)
       raise ArgumentError.new() if isbn.eql?("")
       return isbn
   end    

   def price?(price)
       raise ArgumentError.new() if price <= 0
       return price
   end    

   def price_as_string()
       return "$#{'%.2f' % @price}"
   end

end
