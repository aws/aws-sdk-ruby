# frozen_string_literal: true

Before("@databasemigrationservice") do
  @service = Aws::DatabaseMigrationService::Resource.new
  @client = @service.client
end

After("@databasemigrationservice") do
  # shared cleanup logic
end
