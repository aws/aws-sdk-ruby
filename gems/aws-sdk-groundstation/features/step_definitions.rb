# frozen_string_literal: true

Before("@groundstation") do
  @service = Aws::GroundStation::Resource.new
  @client = @service.client
end

After("@groundstation") do
  # shared cleanup logic
end
