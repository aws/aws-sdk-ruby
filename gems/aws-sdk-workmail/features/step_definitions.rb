Before("@workmail") do
  @service = Aws::WorkMail::Resource.new
  @client = @service.client
end

After("@workmail") do
  # shared cleanup logic
end
