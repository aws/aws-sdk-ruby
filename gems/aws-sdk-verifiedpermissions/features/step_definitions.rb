Before("@verifiedpermissions") do
  @service = Aws::VerifiedPermissions::Resource.new
  @client = @service.client
end

After("@verifiedpermissions") do
  # shared cleanup logic
end
