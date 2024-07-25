class DiceSet
  def initialize
    @dice_array = [Dice.new, Dice.new]
  end

  def display
    @dice_array.map { |dice| "[ #{dice.value} ]"}.join(' - ')
  end

  def roll
    @dice_array.each { |dice| dice.roll }
  end
end
