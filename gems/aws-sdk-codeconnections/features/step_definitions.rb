Before("@codeconnections") do
  @service = Aws::CodeConnections::Resource.new
  @client = @service.client
end

After("@codeconnections") do
  # shared cleanup logic
end
