Before("@cloudcontrolapi") do
  @service = Aws::CloudControlApi::Resource.new
  @client = @service.client
end

After("@cloudcontrolapi") do
  # shared cleanup logic
end
