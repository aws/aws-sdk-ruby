Before("@drs") do
  @service = Aws::Drs::Resource.new
  @client = @service.client
end

After("@drs") do
  # shared cleanup logic
end
