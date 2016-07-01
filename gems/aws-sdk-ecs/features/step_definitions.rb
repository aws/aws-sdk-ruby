Before("@ecs") do
  @service = Aws::ECS::Resource.new
  @client = @service.client
end

After("@ecs") do
  # shared cleanup logic
end
