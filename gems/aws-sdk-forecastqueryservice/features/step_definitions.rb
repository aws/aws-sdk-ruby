# frozen_string_literal: true

Before("@forecastqueryservice") do
  @service = Aws::ForecastQueryService::Resource.new
  @client = @service.client
end

After("@forecastqueryservice") do
  # shared cleanup logic
end
