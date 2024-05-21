Before("@mailmanager") do
  @service = Aws::MailManager::Resource.new
  @client = @service.client
end

After("@mailmanager") do
  # shared cleanup logic
end
