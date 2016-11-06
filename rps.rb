# ['r', 'p', 's'][rand(3)]
computer = ['r', 'p', 's'].sample

puts 'Put in one of these characters: r, p, s > '
player = gets.chomp.downcase

round_position = [player, computer]
# if round_position == ['p', 'r']
#   puts 'you win'
# elsif round_position == ['r', 's']
#   puts 'you win'
# elsif round_position == ['s', 'p']
#   puts 'you win'
# end
#
winning_positions = [['p', 'r'], ['s', 'p'], ['r', 's']]
losing_positions = winning_positions.map(&:reverse)

#if winning_positions.include?(round_position)
#  puts "you win!"
#elsif losing_positions.include?(round_position)
#  puts "you lose!"
#else
#  puts "you draw"
#end

