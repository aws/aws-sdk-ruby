Before("@cloudtrail") do
  @service = Aws::CloudTrail::Resource.new
  @client = @service.client
end

After("@cloudtrail") do
  # shared cleanup logic
end
