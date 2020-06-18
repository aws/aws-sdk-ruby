# frozen_string_literal: true

Before("@dlm") do
  @service = Aws::DLM::Resource.new
  @client = @service.client
end

After("@dlm") do
  # shared cleanup logic
end
