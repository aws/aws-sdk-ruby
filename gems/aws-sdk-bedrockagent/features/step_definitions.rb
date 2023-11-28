Before("@bedrockagent") do
  @service = Aws::BedrockAgent::Resource.new
  @client = @service.client
end

After("@bedrockagent") do
  # shared cleanup logic
end
