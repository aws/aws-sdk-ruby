Before("@cloudwatch") do
  @service = Aws::CloudWatch::Resource.new
  @client = @service.client
end

After("@cloudwatch") do
  # shared cleanup logic
end
