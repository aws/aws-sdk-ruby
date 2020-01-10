Before("@elastictranscoder") do
  @service = Aws::ElasticTranscoder::Resource.new
  @client = @service.client
end

After("@elastictranscoder") do
  # shared cleanup logic
end
