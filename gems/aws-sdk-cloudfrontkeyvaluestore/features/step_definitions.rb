Before("@cloudfrontkeyvaluestore") do
  @service = Aws::CloudFrontKeyValueStore::Resource.new
  @client = @service.client
end

After("@cloudfrontkeyvaluestore") do
  # shared cleanup logic
end
