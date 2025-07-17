Before("@bedrockagentcore") do
  @service = Aws::BedrockAgentCore::Resource.new
  @client = @service.client
end

After("@bedrockagentcore") do
  # shared cleanup logic
end
