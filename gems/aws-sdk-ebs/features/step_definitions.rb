# frozen_string_literal: true

Before("@ebs") do
  @service = Aws::EBS::Resource.new
  @client = @service.client
end

After("@ebs") do
  # shared cleanup logic
end
