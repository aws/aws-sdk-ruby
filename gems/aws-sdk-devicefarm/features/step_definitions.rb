Before("@devicefarm") do
  @service = Aws::DeviceFarm::Resource.new
  @client = @service.client
end

After("@devicefarm") do
  # shared cleanup logic
end
