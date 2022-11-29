Before("@arczonalshift") do
  @service = Aws::ARCZonalShift::Resource.new
  @client = @service.client
end

After("@arczonalshift") do
  # shared cleanup logic
end
