Before("@cloudwatch") do
  @cloudwatch = @client = Aws.cloudwatch
end

After("@cloudwatch") do
end
