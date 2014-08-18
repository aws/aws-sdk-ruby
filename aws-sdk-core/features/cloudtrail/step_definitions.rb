Before("@cloudtrail") do
  @client = Aws::CloudTrail::Client.new
end

After("@cloudtrail") do
end
