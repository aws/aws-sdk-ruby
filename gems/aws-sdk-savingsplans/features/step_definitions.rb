Before("@savingsplans") do
  @service = Aws::SavingsPlans::Resource.new
  @client = @service.client
end

After("@savingsplans") do
  # shared cleanup logic
end
