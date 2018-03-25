# frozen_string_literal: true

Before("@efs") do
  @service = Aws::EFS::Resource.new
  @client = @service.client
end

After("@efs") do
  # shared cleanup logic
end
