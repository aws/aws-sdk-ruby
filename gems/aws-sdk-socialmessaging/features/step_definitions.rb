Before("@socialmessaging") do
  @service = Aws::SocialMessaging::Resource.new
  @client = @service.client
end

After("@socialmessaging") do
  # shared cleanup logic
end
