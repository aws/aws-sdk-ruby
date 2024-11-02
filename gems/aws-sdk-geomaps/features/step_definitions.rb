Before("@geomaps") do
  @service = Aws::GeoMaps::Resource.new
  @client = @service.client
end

After("@geomaps") do
  # shared cleanup logic
end
