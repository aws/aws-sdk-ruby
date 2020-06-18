# frozen_string_literal: true

Before("@rdsdataservice") do
  @service = Aws::RDSDataService::Resource.new
  @client = @service.client
end

After("@rdsdataservice") do
  # shared cleanup logic
end
