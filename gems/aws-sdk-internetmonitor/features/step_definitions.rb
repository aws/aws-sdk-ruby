Before("@internetmonitor") do
  @service = Aws::InternetMonitor::Resource.new
  @client = @service.client
end

After("@internetmonitor") do
  # shared cleanup logic
end
