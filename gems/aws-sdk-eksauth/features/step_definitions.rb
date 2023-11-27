Before("@eksauth") do
  @service = Aws::EKSAuth::Resource.new
  @client = @service.client
end

After("@eksauth") do
  # shared cleanup logic
end
