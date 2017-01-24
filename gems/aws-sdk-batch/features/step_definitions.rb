Before("@batch") do
  @service = Aws::Batch::Resource.new
  @client = @service.client
end

After("@batch") do
  # shared cleanup logic
end
