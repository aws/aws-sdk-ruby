Before("@applicationautoscaling") do
  @service = Aws::ApplicationAutoScaling::Resource.new
  @client = @service.client
end

After("@applicationautoscaling") do
  # shared cleanup logic
end
