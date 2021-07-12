Before("@customerprofiles") do
  @service = Aws::CustomerProfiles::Resource.new
  @client = @service.client
end

After("@customerprofiles") do
  # shared cleanup logic
end
