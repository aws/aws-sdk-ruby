Before("@timestreamquery") do
  @service = Aws::TimestreamQuery::Resource.new
  @client = @service.client
end

After("@timestreamquery") do
  # shared cleanup logic
end
