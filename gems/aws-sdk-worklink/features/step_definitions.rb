Before("@worklink") do
  @service = Aws::WorkLink::Resource.new
  @client = @service.client
end

After("@worklink") do
  # shared cleanup logic
end
