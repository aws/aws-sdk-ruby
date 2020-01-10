Before("@comprehend") do
  @service = Aws::Comprehend::Resource.new
  @client = @service.client
end

After("@comprehend") do
  # shared cleanup logic
end
