Before("@panorama") do
  @service = Aws::Panorama::Resource.new
  @client = @service.client
end

After("@panorama") do
  # shared cleanup logic
end
