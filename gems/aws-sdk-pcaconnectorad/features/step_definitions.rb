Before("@pcaconnectorad") do
  @service = Aws::PcaConnectorAd::Resource.new
  @client = @service.client
end

After("@pcaconnectorad") do
  # shared cleanup logic
end
