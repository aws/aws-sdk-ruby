Before("@deadline") do
  @service = Aws::Deadline::Resource.new
  @client = @service.client
end

After("@deadline") do
  # shared cleanup logic
end
