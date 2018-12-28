Before("@fsx") do
  @service = Aws::FSx::Resource.new
  @client = @service.client
end

After("@fsx") do
  # shared cleanup logic
end
