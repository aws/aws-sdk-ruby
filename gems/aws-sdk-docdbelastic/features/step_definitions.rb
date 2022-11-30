Before("@docdbelastic") do
  @service = Aws::DocDBElastic::Resource.new
  @client = @service.client
end

After("@docdbelastic") do
  # shared cleanup logic
end
