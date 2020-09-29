Before("@timestreamwrite") do
  @service = Aws::TimestreamWrite::Resource.new
  @client = @service.client
end

After("@timestreamwrite") do
  # shared cleanup logic
end
