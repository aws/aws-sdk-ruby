Before("@xray") do
  @service = Aws::XRay::Resource.new
  @client = @service.client
end

After("@xray") do
  # shared cleanup logic
end
