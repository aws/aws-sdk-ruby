Before("@synthetics") do
  @service = Aws::Synthetics::Resource.new
  @client = @service.client
end

After("@synthetics") do
  # shared cleanup logic
end
