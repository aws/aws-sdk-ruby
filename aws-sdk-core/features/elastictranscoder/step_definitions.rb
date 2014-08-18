Before("@elastictranscoder") do
  @client = Aws::ElasticTranscoder::Client.new
end

After("@elastictranscoder") do
end
