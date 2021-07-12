Before("@greengrassv2") do
  @service = Aws::GreengrassV2::Resource.new
  @client = @service.client
end

After("@greengrassv2") do
  # shared cleanup logic
end
