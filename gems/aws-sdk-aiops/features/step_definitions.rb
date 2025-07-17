Before("@aiops") do
  @service = Aws::AIOps::Resource.new
  @client = @service.client
end

After("@aiops") do
  # shared cleanup logic
end
