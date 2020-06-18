# frozen_string_literal: true

Before("@acm") do
  @service = Aws::ACM::Resource.new
  @client = @service.client
end

After("@acm") do
  # shared cleanup logic
end
