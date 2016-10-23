# generate fibonacci numbers
def fibonacci(n)
  if n < 3
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

# make them up to 4 million
numbers = []
last_n = 1
next_fib = 0
while next_fib <= 4000000 do
  next_fib = fibonacci(last_n)
  numbers << next_fib
  last_n += 1
end

# select even numbers
numbers.select! { |n| n.even? }

# sum array
puts numbers.inject { |sum, n| sum + n }.to_s

# Let's practice Fibonacci a bit more. This example works to demonstrate basic
# principles, but real world ruby code uses classes.

class Fibonacci
  def self.nth(n) # This "self.method_name" thing is called a class method. More on that later.
    if n < 3
      1
    else
      fibonacci(n-1) + fibonacci(n-2)
    end
    # n < 3 ? 1 : nth(n-1) + nth + fibonacci(n-2) # <- TERNARY CONDITIONAL SYNTAX
  end
end

# Use this to load the file in pry!
# require_relative './fib'

# > Fibonacci.nth(4)
#=> 3

# This is ok for getting a specific fibonacci number, but how do we get an array of them?

# > Array(1..10).map { |number| Fibonacci.nth(number) }
#=> [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# There are a 2 new things going on here:
# > Array(1..10)
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 2. map. Map is something called a higher order function. It takes the content
#   of the curly brackets, between '{' and '}', as an input object called a Proc.
#   a Proc is basically an unnamed method that isn't attached to a class.

#   You can pass them around with variables:
# > say_hello = Proc.new { puts 'hello world' }
# > say_hello.call
# hello world
# => nil

# You might also here the name Lambda. They are extremely similar objects in ruby,
# and you can think of them as the same thing for the most part.

# There are many different syntaxes for making procs
# > proc { puts 'hello world' }
# > ->(num) { num * num }
# On top of being a lamba, this one demonstrates procs (or lambdas) that can
# take arguments When you see a block variable ( like this:
# |block_variable_name| ) that is telling ruby that the block is going to take
# arguments.

# A good way to think about map, is that it is a function which takes a
# function that applies to a single object, and converts it to a function that
# works on collections of objects, like Arrays.

# > double_num = ->(num) { num * 2 }
# > Array(1..10).map(&double_num)
# &double_num is just telling ruby to treat 'double_num' as a proc.

# This is the same thing as:
# > Array(1..10).map { |num| num * 2 }
# # except you don't have the double_num variable around after.

# You can also convert regular methods to procs like this:
# > ['cooper', 'matt'].map(&:capitalize)
# or this:
# > Array(1..10).map(&Fibonacci.method(:nth))
