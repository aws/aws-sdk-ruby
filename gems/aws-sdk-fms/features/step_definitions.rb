Before("@fms") do
  @service = Aws::FMS::Resource.new
  @client = @service.client
end

After("@fms") do
  # shared cleanup logic
end
