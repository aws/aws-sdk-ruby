Before("@partnercentralselling") do
  @service = Aws::PartnerCentralSelling::Resource.new
  @client = @service.client
end

After("@partnercentralselling") do
  # shared cleanup logic
end
