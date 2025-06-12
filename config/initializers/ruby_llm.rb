require 'aws-sdk-core'

RubyLLM.configure do |config|
  sts_client = Aws::STS::Client.new
  session_token = sts_client.get_session_token

  #config.anthropic_api_key = ENV["ANTHROPIC_API_KEY"]
  config.bedrock_api_key = session_token.credentials.access_key_id
  config.bedrock_secret_key = session_token.credentials.secret_access_key
  config.bedrock_session_token = session_token.credentials.session_token
  config.bedrock_region = 'us-west-2'

  config.default_model = "claude-3-7-sonnet"
end
