Before("@secretsmanager") do
  @service = Aws::SecretsManager::Resource.new
  @client = @service.client
end

After("@secretsmanager") do
  # shared cleanup logic
end
