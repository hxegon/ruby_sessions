# without using #even?, write a function that removes odd numbers from an array
array = 1.upto(20).to_a

def remove_odd(list)
  list.delete_if(&:odd?)
end

print remove_odd(array)
