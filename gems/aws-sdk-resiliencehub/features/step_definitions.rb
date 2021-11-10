Before("@resiliencehub") do
  @service = Aws::ResilienceHub::Resource.new
  @client = @service.client
end

After("@resiliencehub") do
  # shared cleanup logic
end
