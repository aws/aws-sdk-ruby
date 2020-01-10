Before("@inspector") do
  @service = Aws::Inspector::Resource.new
  @client = @service.client
end

After("@inspector") do
  # shared cleanup logic
end
