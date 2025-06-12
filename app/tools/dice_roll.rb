class DiceRoll < RubyLLM::Tool
  description "Rolls a single six-sided die and returns the result."

  def execute
    roll = rand(1..6)
    
    puts "#{Time.now.to_i}: Rolled a #{roll}"

    {
      roll: roll
    }
  end
end
