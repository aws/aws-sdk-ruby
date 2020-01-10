Before("@cloudsearch") do
  @service = Aws::CloudSearch::Resource.new
  @client = @service.client
end

After("@cloudsearch") do
  # shared cleanup logic
end
