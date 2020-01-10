Before("@kinesisvideosignalingchannels") do
  @service = Aws::KinesisVideoSignalingChannels::Resource.new
  @client = @service.client
end

After("@kinesisvideosignalingchannels") do
  # shared cleanup logic
end
