module Animal
  def breathes?
    true
  end
end

module Carnivorous
  def teeth
    'sharp'
  end
end

class Pet
  def initialize(name)
    @legs = 4
    @name = name
  end
end

class Dog < Pet
  include Animal

  def say_hello
    puts 'bark'
  end
end

class Cat < Pet
  include Carnivorous
  include Animal

  def say_hello
    puts 'meow'
  end
end

Dog.new('Charlie')
Cat.new('black cat')
