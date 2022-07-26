Before("@billingconductor") do
  @service = Aws::BillingConductor::Resource.new
  @client = @service.client
end

After("@billingconductor") do
  # shared cleanup logic
end
