Before("@lexmodelsv2") do
  @service = Aws::LexModelsV2::Resource.new
  @client = @service.client
end

After("@lexmodelsv2") do
  # shared cleanup logic
end
