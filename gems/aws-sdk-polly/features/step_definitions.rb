# frozen_string_literal: true

Before("@polly") do
  @service = Aws::Polly::Resource.new
  @client = @service.client
end

After("@polly") do
  # shared cleanup logic
end
