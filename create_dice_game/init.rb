require_relative 'classes/dice'
require_relative 'classes/dice_set'

display_line = '-' * 26

puts display_line

puts 'Welcome to the Dice Roller'

puts display_line

dice_set = DiceSet.new

output_result = dice_set.display

loop do 
  puts "\n#{output_result}\n\n"

  puts 'Type \'r\' to roll again, \'q\' to quit'
  
  print '> '

  user_option = gets.chomp

  if user_option == 'r'
    dice_set.roll

    output_result = dice_set.display
  elsif user_option == 'q'
    break
  else
    output_result = 'Invalid option!'
  end
end
