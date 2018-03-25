# frozen_string_literal: true

Before("@servicecatalog") do
  @service = Aws::ServiceCatalog::Resource.new
  @client = @service.client
end

After("@servicecatalog") do
  # shared cleanup logic
end
