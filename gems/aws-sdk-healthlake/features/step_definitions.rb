Before("@healthlake") do
  @service = Aws::HealthLake::Resource.new
  @client = @service.client
end

After("@healthlake") do
  # shared cleanup logic
end
