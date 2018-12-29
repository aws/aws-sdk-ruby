Before("@licensemanager") do
  @service = Aws::LicenseManager::Resource.new
  @client = @service.client
end

After("@licensemanager") do
  # shared cleanup logic
end
