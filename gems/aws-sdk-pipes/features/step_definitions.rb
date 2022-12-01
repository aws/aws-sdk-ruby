Before("@pipes") do
  @service = Aws::Pipes::Resource.new
  @client = @service.client
end

After("@pipes") do
  # shared cleanup logic
end
