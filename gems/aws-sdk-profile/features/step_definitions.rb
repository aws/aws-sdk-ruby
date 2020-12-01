Before("@profile") do
  @service = Aws::Profile::Resource.new
  @client = @service.client
end

After("@profile") do
  # shared cleanup logic
end
