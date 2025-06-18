Before("@mpa") do
  @service = Aws::MPA::Resource.new
  @client = @service.client
end

After("@mpa") do
  # shared cleanup logic
end
