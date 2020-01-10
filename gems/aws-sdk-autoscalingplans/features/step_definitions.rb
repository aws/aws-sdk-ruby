Before("@autoscalingplans") do
  @service = Aws::AutoScalingPlans::Resource.new
  @client = @service.client
end

After("@autoscalingplans") do
  # shared cleanup logic
end
