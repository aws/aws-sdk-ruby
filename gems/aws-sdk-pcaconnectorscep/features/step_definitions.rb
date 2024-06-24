Before("@pcaconnectorscep") do
  @service = Aws::PcaConnectorScep::Resource.new
  @client = @service.client
end

After("@pcaconnectorscep") do
  # shared cleanup logic
end
