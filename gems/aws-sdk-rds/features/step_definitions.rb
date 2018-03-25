# frozen_string_literal: true

Before("@rds") do
  @service = Aws::RDS::Resource.new
  @client = @service.client
end

After("@rds") do
  # shared cleanup logic
end
