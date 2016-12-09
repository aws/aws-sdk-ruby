Before("@health") do
  @service = Aws::Health::Resource.new
  @client = @service.client
end

After("@health") do
  # shared cleanup logic
end
