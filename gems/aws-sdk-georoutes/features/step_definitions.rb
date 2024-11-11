Before("@georoutes") do
  @service = Aws::GeoRoutes::Resource.new
  @client = @service.client
end

After("@georoutes") do
  # shared cleanup logic
end
