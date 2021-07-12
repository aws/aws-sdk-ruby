Before("@lexruntimev2") do
  @service = Aws::LexRuntimeV2::Resource.new
  @client = @service.client
end

After("@lexruntimev2") do
  # shared cleanup logic
end
