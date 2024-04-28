Before("@timestreaminfluxdb") do
  @service = Aws::TimestreamInfluxDB::Resource.new
  @client = @service.client
end

After("@timestreaminfluxdb") do
  # shared cleanup logic
end
