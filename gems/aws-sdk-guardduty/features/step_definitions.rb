# frozen_string_literal: true

Before("@guardduty") do
  @service = Aws::GuardDuty::Resource.new
  @client = @service.client
end

After("@guardduty") do
  # shared cleanup logic
end
