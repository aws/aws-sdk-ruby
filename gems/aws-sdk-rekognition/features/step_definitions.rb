Before("@rekognition") do
  @service = Aws::Rekognition::Resource.new
  @client = @service.client
end

After("@rekognition") do
  # shared cleanup logic
end
