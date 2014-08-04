Before("@cloudformation") do
  @client = Aws::CloudFormation::Client.new
end

After("@cloudformation") do
end
