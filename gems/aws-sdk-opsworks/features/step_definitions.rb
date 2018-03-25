# frozen_string_literal: true

Before("@opsworks") do
  @service = Aws::OpsWorks::Resource.new
  @client = @service.client
end

After("@opsworks") do
  # shared cleanup logic
end
