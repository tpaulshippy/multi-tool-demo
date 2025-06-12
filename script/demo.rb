#!/usr/bin/env ruby

# Load Rails environment
require_relative '../config/environment'

# Create a new chat instance
chat = Chat.create!(model_id: "claude-3-7-sonnet", provider: "bedrock")

chat.with_tool(DiceRoll)

response = chat.ask("Roll the dice 3 times all at once in a single array of tool calls, not across multiple messages.") do |chunk|
  print chunk.content
end

puts "\n\n"
puts response.content

