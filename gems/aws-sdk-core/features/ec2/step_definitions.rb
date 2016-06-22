Before("@ec2") do
  @client = Aws::EC2::Client.new
end

After("@ec2") do
end
