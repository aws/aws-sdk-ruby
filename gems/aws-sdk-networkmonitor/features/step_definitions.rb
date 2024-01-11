Before("@networkmonitor") do
  @service = Aws::NetworkMonitor::Resource.new
  @client = @service.client
end

After("@networkmonitor") do
  # shared cleanup logic
end
