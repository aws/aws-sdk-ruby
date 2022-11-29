Before("@securitylake") do
  @service = Aws::SecurityLake::Resource.new
  @client = @service.client
end

After("@securitylake") do
  # shared cleanup logic
end
