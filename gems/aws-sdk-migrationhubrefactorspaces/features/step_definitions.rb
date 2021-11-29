Before("@migrationhubrefactorspaces") do
  @service = Aws::MigrationHubRefactorSpaces::Resource.new
  @client = @service.client
end

After("@migrationhubrefactorspaces") do
  # shared cleanup logic
end
