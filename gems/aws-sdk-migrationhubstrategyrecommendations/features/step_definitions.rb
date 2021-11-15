Before("@migrationhubstrategyrecommendations") do
  @service = Aws::MigrationHubStrategyRecommendations::Resource.new
  @client = @service.client
end

After("@migrationhubstrategyrecommendations") do
  # shared cleanup logic
end
