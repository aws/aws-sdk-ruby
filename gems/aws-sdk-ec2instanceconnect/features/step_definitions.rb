# frozen_string_literal: true

Before("@ec2instanceconnect") do
  @service = Aws::EC2InstanceConnect::Resource.new
  @client = @service.client
end

After("@ec2instanceconnect") do
  # shared cleanup logic
end
