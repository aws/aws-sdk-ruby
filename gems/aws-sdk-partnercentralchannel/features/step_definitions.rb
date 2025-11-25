Before("@partnercentralchannel") do
  @service = Aws::PartnerCentralChannel::Resource.new
  @client = @service.client
end

After("@partnercentralchannel") do
  # shared cleanup logic
end
