# frozen_string_literal: true

Before("@dataexchange") do
  @service = Aws::DataExchange::Resource.new
  @client = @service.client
end

After("@dataexchange") do
  # shared cleanup logic
end
