Before("@bedrockagentcorecontrol") do
  @service = Aws::BedrockAgentCoreControl::Resource.new
  @client = @service.client
end

After("@bedrockagentcorecontrol") do
  # shared cleanup logic
end
