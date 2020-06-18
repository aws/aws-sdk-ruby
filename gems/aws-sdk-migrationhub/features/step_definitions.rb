# frozen_string_literal: true

Before("@migrationhub") do
  @service = Aws::MigrationHub::Resource.new
  @client = @service.client
end

After("@migrationhub") do
  # shared cleanup logic
end
