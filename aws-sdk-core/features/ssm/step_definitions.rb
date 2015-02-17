Before("@ssm") do
  @client = Aws::SSM::Client.new
end

After("@ssm") do
end
