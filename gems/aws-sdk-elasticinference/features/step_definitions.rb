Before("@elasticinference") do
  @service = Aws::ElasticInference::Resource.new
  @client = @service.client
end

After("@elasticinference") do
  # shared cleanup logic
end
