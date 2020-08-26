Before("@appflow") do
  @service = Aws::Appflow::Resource.new
  @client = @service.client
end

After("@appflow") do
  # shared cleanup logic
end
