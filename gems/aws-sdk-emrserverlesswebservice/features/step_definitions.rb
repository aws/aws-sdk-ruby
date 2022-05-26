Before("@emrserverlesswebservice") do
  @service = Aws::EMRServerlessWebService::Resource.new
  @client = @service.client
end

After("@emrserverlesswebservice") do
  # shared cleanup logic
end
