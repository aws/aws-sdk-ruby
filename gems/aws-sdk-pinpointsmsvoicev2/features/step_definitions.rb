Before("@pinpointsmsvoicev2") do
  @service = Aws::PinpointSMSVoiceV2::Resource.new
  @client = @service.client
end

After("@pinpointsmsvoicev2") do
  # shared cleanup logic
end
