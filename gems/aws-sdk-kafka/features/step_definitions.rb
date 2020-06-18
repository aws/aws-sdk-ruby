# frozen_string_literal: true

Before("@kafka") do
  @service = Aws::Kafka::Resource.new
  @client = @service.client
end

After("@kafka") do
  # shared cleanup logic
end
