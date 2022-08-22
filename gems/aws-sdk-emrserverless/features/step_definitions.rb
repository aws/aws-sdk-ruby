Before("@emrserverless") do
  @service = Aws::EMRServerless::Resource.new
  @client = @service.client
end

After("@emrserverless") do
  # shared cleanup logic
end
