Before("@migrationhuborchestrator") do
  @service = Aws::MigrationHubOrchestrator::Resource.new
  @client = @service.client
end

After("@migrationhuborchestrator") do
  # shared cleanup logic
end
