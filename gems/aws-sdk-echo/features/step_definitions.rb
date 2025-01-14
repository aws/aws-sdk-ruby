Before("@echo") do
  @service = Aws::Echo::Resource.new
  @client = @service.client
end

After("@echo") do
  # shared cleanup logic
end
