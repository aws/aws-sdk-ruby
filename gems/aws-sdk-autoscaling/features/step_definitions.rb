# frozen_string_literal: true

Before("@autoscaling") do
  @service = Aws::AutoScaling::Resource.new
  @client = @service.client
end

After("@autoscaling") do
  # shared cleanup logic
end
