#!/usr/bin/env ruby

# Load Rails environment
require_relative '../config/environment'

# Create a new chat instance
chat = Chat.create!(model_id: "claude-3-7-sonnet-20250219")

chat.with_tool(DiceRoll)

chat.ask("Roll the dice 3 times all at once in a single array of tool calls, not across multiple messages.")
