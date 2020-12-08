Before("@auditmanager") do
  @service = Aws::AuditManager::Resource.new
  @client = @service.client
end

After("@auditmanager") do
  # shared cleanup logic
end
