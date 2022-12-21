Before("@licensemanagerlinuxsubscriptions") do
  @service = Aws::LicenseManagerLinuxSubscriptions::Resource.new
  @client = @service.client
end

After("@licensemanagerlinuxsubscriptions") do
  # shared cleanup logic
end
