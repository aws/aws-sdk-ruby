Before("@personalizeruntime") do
  @service = Aws::PersonalizeRuntime::Resource.new
  @client = @service.client
end

After("@personalizeruntime") do
  # shared cleanup logic
end
