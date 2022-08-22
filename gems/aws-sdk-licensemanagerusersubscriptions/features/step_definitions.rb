Before("@licensemanagerusersubscriptions") do
  @service = Aws::LicenseManagerUserSubscriptions::Resource.new
  @client = @service.client
end

After("@licensemanagerusersubscriptions") do
  # shared cleanup logic
end
