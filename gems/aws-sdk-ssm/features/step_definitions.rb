Before("@ssm") do
  @service = Aws::SSM::Resource.new
  @client = @service.client
end

After("@ssm") do
  # shared cleanup logic
end
