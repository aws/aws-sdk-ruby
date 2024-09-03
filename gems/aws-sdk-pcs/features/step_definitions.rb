Before("@pcs") do
  @service = Aws::PCS::Resource.new
  @client = @service.client
end

After("@pcs") do
  # shared cleanup logic
end
