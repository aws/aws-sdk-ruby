Before("@kinesisvideowebrtcstorage") do
  @service = Aws::KinesisVideoWebRTCStorage::Resource.new
  @client = @service.client
end

After("@kinesisvideowebrtcstorage") do
  # shared cleanup logic
end
