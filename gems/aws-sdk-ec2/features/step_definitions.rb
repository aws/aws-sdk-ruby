Before("@ec2") do
  @service = Aws::EC2::Resource.new
  @client = @service.client
end

After("@ec2") do
  # shared cleanup logic
end
