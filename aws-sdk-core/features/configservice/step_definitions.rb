Before("@configservice") do
  @client = Aws::ConfigService::Client.new
end

After("@configservice") do
end
