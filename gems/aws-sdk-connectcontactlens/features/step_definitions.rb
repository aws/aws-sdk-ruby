Before("@connectcontactlens") do
  @service = Aws::ConnectContactLens::Resource.new
  @client = @service.client
end

After("@connectcontactlens") do
  # shared cleanup logic
end
