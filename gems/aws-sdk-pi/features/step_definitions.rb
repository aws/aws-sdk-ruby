Before("@pi") do
  @service = Aws::PI::Resource.new
  @client = @service.client
end

After("@pi") do
  # shared cleanup logic
end
