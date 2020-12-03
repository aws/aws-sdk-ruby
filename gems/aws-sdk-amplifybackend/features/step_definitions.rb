Before("@amplifybackend") do
  @service = Aws::AmplifyBackend::Resource.new
  @client = @service.client
end

After("@amplifybackend") do
  # shared cleanup logic
end
