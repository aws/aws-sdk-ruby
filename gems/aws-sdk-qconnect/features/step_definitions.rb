Before("@qconnect") do
  @service = Aws::QConnect::Resource.new
  @client = @service.client
end

After("@qconnect") do
  # shared cleanup logic
end
