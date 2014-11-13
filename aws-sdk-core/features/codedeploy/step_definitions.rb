Before("@codedeploy") do
  @client = Aws::CodeDeploy::Client.new
end

After("@codedeploy") do
end
