Before("@transcribestreamingservice") do
  @service = Aws::TranscribeStreamingService::Resource.new
  @client = @service.client
end

After("@transcribestreamingservice") do
  # shared cleanup logic
end
