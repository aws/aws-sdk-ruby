Before("@forecastservice") do
  @service = Aws::ForecastService::Resource.new
  @client = @service.client
end

After("@forecastservice") do
  # shared cleanup logic
end
