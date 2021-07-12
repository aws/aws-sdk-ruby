Before("@finspacedata") do
  @service = Aws::FinSpaceData::Resource.new
  @client = @service.client
end

After("@finspacedata") do
  # shared cleanup logic
end
