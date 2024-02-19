Before("@bedrockagentruntime") do
  @service = Aws::BedrockAgentRuntime::Resource.new
  @client = @service.client
end

After("@bedrockagentruntime") do
  # shared cleanup logic
end
