Before("@controlcatalog") do
  @service = Aws::ControlCatalog::Resource.new
  @client = @service.client
end

After("@controlcatalog") do
  # shared cleanup logic
end
