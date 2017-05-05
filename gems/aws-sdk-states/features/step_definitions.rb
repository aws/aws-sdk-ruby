Before("@states") do
  @service = Aws::States::Resource.new
  @client = @service.client
end

After("@states") do
  # shared cleanup logic
end
