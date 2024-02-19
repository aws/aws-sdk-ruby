Before("@trustedadvisor") do
  @service = Aws::TrustedAdvisor::Resource.new
  @client = @service.client
end

After("@trustedadvisor") do
  # shared cleanup logic
end
