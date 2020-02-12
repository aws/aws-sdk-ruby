Before("@augmentedairuntime") do
  @service = Aws::AugmentedAIRuntime::Resource.new
  @client = @service.client
end

After("@augmentedairuntime") do
  # shared cleanup logic
end
