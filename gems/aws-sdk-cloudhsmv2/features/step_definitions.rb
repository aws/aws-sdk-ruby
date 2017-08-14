Before("@cloudhsmv2") do
  @service = Aws::CloudHSMV2::Resource.new
  @client = @service.client
end

After("@cloudhsmv2") do
  # shared cleanup logic
end
