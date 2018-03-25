# frozen_string_literal: true

Before("@kinesis") do
  @service = Aws::Kinesis::Resource.new
  @client = @service.client
end

After("@kinesis") do
  # shared cleanup logic
end
