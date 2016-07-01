Before("@support") do
  @service = Aws::Support::Resource.new
  @client = @service.client
end

After("@support") do
  # shared cleanup logic
end
