Before("@cloudfront") do
  @cloudfront = @client = Aws.cloudfront
end

After("@cloudfront") do
end
