Before("@pinpoint") do
  @service = Aws::Pinpoint::Resource.new
  @client = @service.client
end

After("@pinpoint") do
  # shared cleanup logic
end
