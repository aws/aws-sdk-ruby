Before("@transfer") do
  @service = Aws::Transfer::Resource.new
  @client = @service.client
end

After("@transfer") do
  # shared cleanup logic
end
