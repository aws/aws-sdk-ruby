Before("@apptest") do
  @service = Aws::AppTest::Resource.new
  @client = @service.client
end

After("@apptest") do
  # shared cleanup logic
end
