Before("@schemas") do
  @service = Aws::Schemas::Resource.new
  @client = @service.client
end

After("@schemas") do
  # shared cleanup logic
end
