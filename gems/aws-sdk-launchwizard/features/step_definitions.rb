Before("@launchwizard") do
  @service = Aws::LaunchWizard::Resource.new
  @client = @service.client
end

After("@launchwizard") do
  # shared cleanup logic
end
