Before("@connectcampaignsv2") do
  @service = Aws::ConnectCampaignsV2::Resource.new
  @client = @service.client
end

After("@connectcampaignsv2") do
  # shared cleanup logic
end
