Before("@migrationhubconfig") do
  @service = Aws::MigrationHubConfig::Resource.new
  @client = @service.client
end

After("@migrationhubconfig") do
  # shared cleanup logic
end
