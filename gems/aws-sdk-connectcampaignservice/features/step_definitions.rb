Before("@connectcampaignservice") do
  @service = Aws::ConnectCampaignService::Resource.new
  @client = @service.client
end

After("@connectcampaignservice") do
  # shared cleanup logic
end
