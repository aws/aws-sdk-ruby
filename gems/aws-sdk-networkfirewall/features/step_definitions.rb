Before("@networkfirewall") do
  @service = Aws::NetworkFirewall::Resource.new
  @client = @service.client
end

After("@networkfirewall") do
  # shared cleanup logic
end
