Before("@ssmguiconnect") do
  @service = Aws::SSMGuiConnect::Resource.new
  @client = @service.client
end

After("@ssmguiconnect") do
  # shared cleanup logic
end
