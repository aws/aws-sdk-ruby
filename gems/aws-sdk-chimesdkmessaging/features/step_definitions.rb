Before("@chimesdkmessaging") do
  @service = Aws::ChimeSDKMessaging::Resource.new
  @client = @service.client
end

After("@chimesdkmessaging") do
  # shared cleanup logic
end
