Before("@prometheusservice") do
  @service = Aws::PrometheusService::Resource.new
  @client = @service.client
end

After("@prometheusservice") do
  # shared cleanup logic
end
