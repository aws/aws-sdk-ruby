# frozen_string_literal: true

Before("@globalaccelerator") do
  @service = Aws::GlobalAccelerator::Resource.new
  @client = @service.client
end

After("@globalaccelerator") do
  # shared cleanup logic
end
