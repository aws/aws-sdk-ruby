Before("@inspector2") do
  @service = Aws::Inspector2::Resource.new
  @client = @service.client
end

After("@inspector2") do
  # shared cleanup logic
end
