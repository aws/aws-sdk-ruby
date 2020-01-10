Before("@lexmodelbuildingservice") do
  @service = Aws::LexModelBuildingService::Resource.new
  @client = @service.client
end

After("@lexmodelbuildingservice") do
  # shared cleanup logic
end
