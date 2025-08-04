Before("@arcregionswitch") do
  @service = Aws::ARCRegionswitch::Resource.new
  @client = @service.client
end

After("@arcregionswitch") do
  # shared cleanup logic
end
