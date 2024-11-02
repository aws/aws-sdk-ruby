Before("@geoplaces") do
  @service = Aws::GeoPlaces::Resource.new
  @client = @service.client
end

After("@geoplaces") do
  # shared cleanup logic
end
