Before("@cloudtraildata") do
  @service = Aws::CloudTrailData::Resource.new
  @client = @service.client
end

After("@cloudtraildata") do
  # shared cleanup logic
end
