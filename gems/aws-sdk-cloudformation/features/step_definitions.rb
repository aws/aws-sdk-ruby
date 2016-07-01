Before("@cloudformation") do
  @service = Aws::CloudFormation::Resource.new
  @client = @service.client
end

After("@cloudformation") do
  # shared cleanup logic
end
