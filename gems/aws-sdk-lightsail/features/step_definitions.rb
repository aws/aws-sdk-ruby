Before("@lightsail") do
  @service = Aws::Lightsail::Resource.new
  @client = @service.client
end

After("@lightsail") do
  # shared cleanup logic
end
