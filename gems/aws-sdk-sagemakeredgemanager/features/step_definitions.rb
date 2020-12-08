Before("@sagemakeredgemanager") do
  @service = Aws::SagemakerEdgeManager::Resource.new
  @client = @service.client
end

After("@sagemakeredgemanager") do
  # shared cleanup logic
end
