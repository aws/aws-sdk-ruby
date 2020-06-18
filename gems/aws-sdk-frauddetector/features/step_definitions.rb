# frozen_string_literal: true

Before("@frauddetector") do
  @service = Aws::FraudDetector::Resource.new
  @client = @service.client
end

After("@frauddetector") do
  # shared cleanup logic
end
