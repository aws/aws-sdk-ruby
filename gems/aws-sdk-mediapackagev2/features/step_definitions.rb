Before("@mediapackagev2") do
  @service = Aws::MediaPackageV2::Resource.new
  @client = @service.client
end

After("@mediapackagev2") do
  # shared cleanup logic
end
