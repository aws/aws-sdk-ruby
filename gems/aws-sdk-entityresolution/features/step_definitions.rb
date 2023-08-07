Before("@entityresolution") do
  @service = Aws::EntityResolution::Resource.new
  @client = @service.client
end

After("@entityresolution") do
  # shared cleanup logic
end
