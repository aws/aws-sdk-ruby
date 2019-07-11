Before("@eventbridge") do
  @service = Aws::EventBridge::Resource.new
  @client = @service.client
end

After("@eventbridge") do
  # shared cleanup logic
end
