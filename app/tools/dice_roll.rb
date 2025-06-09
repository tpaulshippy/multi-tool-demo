class DiceRoll < RubyLLM::Tool
  description "Rolls a single six-sided die and returns the result."

  def execute
    roll = rand(1..6)

    {
      roll: roll
    }
  end
end
