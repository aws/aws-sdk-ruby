Before("@osis") do
  @service = Aws::OSIS::Resource.new
  @client = @service.client
end

After("@osis") do
  # shared cleanup logic
end
