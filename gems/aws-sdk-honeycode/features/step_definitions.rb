Before("@honeycode") do
  @service = Aws::Honeycode::Resource.new
  @client = @service.client
end

After("@honeycode") do
  # shared cleanup logic
end
