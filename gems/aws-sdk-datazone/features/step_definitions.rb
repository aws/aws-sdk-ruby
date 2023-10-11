Before("@datazone") do
  @service = Aws::DataZone::Resource.new
  @client = @service.client
end

After("@datazone") do
  # shared cleanup logic
end
