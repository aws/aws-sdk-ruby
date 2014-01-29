Before("@ec2") do
  @ec2 = @client = Aws.ec2
end

After("@ec2") do
end
