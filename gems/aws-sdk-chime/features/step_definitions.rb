Before("@chime") do
  @service = Aws::Chime::Resource.new
  @client = @service.client
end

After("@chime") do
  # shared cleanup logic
end
