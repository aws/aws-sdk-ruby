Before("@codedeploy") do
  @service = Aws::CodeDeploy::Resource.new
  @client = @service.client
end

After("@codedeploy") do
  # shared cleanup logic
end
