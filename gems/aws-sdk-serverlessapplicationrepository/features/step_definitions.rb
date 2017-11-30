Before("@serverlessapplicationrepository") do
  @service = Aws::ServerlessApplicationRepository::Resource.new
  @client = @service.client
end

After("@serverlessapplicationrepository") do
  # shared cleanup logic
end
