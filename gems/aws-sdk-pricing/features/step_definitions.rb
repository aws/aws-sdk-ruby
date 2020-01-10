Before("@pricing") do
  @service = Aws::Pricing::Resource.new
  @client = @service.client
end

After("@pricing") do
  # shared cleanup logic
end
