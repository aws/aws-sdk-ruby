Before("@bedrock") do
  @service = Aws::Bedrock::Resource.new
  @client = @service.client
end

After("@bedrock") do
  # shared cleanup logic
end
