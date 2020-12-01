Before("@devopsguru") do
  @service = Aws::DevOpsGuru::Resource.new
  @client = @service.client
end

After("@devopsguru") do
  # shared cleanup logic
end
