Before("@connectwisdomservice") do
  @service = Aws::ConnectWisdomService::Resource.new
  @client = @service.client
end

After("@connectwisdomservice") do
  # shared cleanup logic
end
