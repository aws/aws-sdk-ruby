Before("@pinpointemail") do
  @service = Aws::PinpointEmail::Resource.new
  @client = @service.client
end

After("@pinpointemail") do
  # shared cleanup logic
end
