Before("@cloudfront") do
  @cloudfront = Aws.cloudfront
end

After("@cloudfront") do
end
