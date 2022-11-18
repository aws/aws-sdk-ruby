Before("@chimesdkvoice") do
  @service = Aws::ChimeSDKVoice::Resource.new
  @client = @service.client
end

After("@chimesdkvoice") do
  # shared cleanup logic
end
