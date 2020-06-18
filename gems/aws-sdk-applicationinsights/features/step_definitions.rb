# frozen_string_literal: true

Before("@applicationinsights") do
  @service = Aws::ApplicationInsights::Resource.new
  @client = @service.client
end

After("@applicationinsights") do
  # shared cleanup logic
end
