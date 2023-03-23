Before("@ivsrealtime") do
  @service = Aws::IVSRealTime::Resource.new
  @client = @service.client
end

After("@ivsrealtime") do
  # shared cleanup logic
end
