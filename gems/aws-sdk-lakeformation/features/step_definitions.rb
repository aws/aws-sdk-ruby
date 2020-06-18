# frozen_string_literal: true

Before("@lakeformation") do
  @service = Aws::LakeFormation::Resource.new
  @client = @service.client
end

After("@lakeformation") do
  # shared cleanup logic
end
