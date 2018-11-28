Before("@securityhub") do
  @service = Aws::SecurityHub::Resource.new
  @client = @service.client
end

After("@securityhub") do
  # shared cleanup logic
end
