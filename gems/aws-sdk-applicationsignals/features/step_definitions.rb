Before("@applicationsignals") do
  @service = Aws::ApplicationSignals::Resource.new
  @client = @service.client
end

After("@applicationsignals") do
  # shared cleanup logic
end
