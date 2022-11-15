Before("@ssmsap") do
  @service = Aws::SsmSap::Resource.new
  @client = @service.client
end

After("@ssmsap") do
  # shared cleanup logic
end
