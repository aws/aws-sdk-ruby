Before("@mainframemodernization") do
  @service = Aws::MainframeModernization::Resource.new
  @client = @service.client
end

After("@mainframemodernization") do
  # shared cleanup logic
end
