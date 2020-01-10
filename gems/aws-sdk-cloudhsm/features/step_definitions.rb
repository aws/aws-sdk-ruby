Before("@cloudhsm") do
  @service = Aws::CloudHSM::Resource.new
  @client = @service.client
end

After("@cloudhsm") do
  # shared cleanup logic
end
