Before("@costoptimizationhub") do
  @service = Aws::CostOptimizationHub::Resource.new
  @client = @service.client
end

After("@costoptimizationhub") do
  # shared cleanup logic
end
