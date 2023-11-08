Before("@bedrockruntime") do
  @service = Aws::BedrockRuntime::Resource.new
  @client = @service.client
end

After("@bedrockruntime") do
  # shared cleanup logic
end
