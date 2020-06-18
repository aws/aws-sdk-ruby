# frozen_string_literal: true

Before("@iotdataplane") do
  @service = Aws::IoTDataPlane::Resource.new
  @client = @service.client
end

After("@iotdataplane") do
  # shared cleanup logic
end
