Before("@computeoptimizer") do
  @service = Aws::ComputeOptimizer::Resource.new
  @client = @service.client
end

After("@computeoptimizer") do
  # shared cleanup logic
end
