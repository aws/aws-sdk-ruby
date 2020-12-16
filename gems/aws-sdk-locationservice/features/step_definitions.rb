Before("@locationservice") do
  @service = Aws::LocationService::Resource.new
  @client = @service.client
end

After("@locationservice") do
  # shared cleanup logic
end
