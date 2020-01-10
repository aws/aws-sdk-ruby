Before("@mediapackage") do
  @service = Aws::MediaPackage::Resource.new
  @client = @service.client
end

After("@mediapackage") do
  # shared cleanup logic
end
