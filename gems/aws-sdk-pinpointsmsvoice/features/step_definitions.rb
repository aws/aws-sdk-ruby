Before("@pinpointsmsvoice") do
  @service = Aws::PinpointSMSVoice::Resource.new
  @client = @service.client
end

After("@pinpointsmsvoice") do
  # shared cleanup logic
end
