class Chat < ApplicationRecord
  acts_as_chat

  attr_accessor :provider

  after_initialize :set_chat

  private

  def set_chat
    @chat = RubyLLM.chat(model: model_id, provider: provider)
  end
end
