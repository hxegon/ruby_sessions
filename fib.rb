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
