Before("@comprehendmedical") do
  @service = Aws::ComprehendMedical::Resource.new
  @client = @service.client
end

After("@comprehendmedical") do
  # shared cleanup logic
end
