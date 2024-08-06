Before("@ssmquicksetup") do
  @service = Aws::SSMQuickSetup::Resource.new
  @client = @service.client
end

After("@ssmquicksetup") do
  # shared cleanup logic
end
