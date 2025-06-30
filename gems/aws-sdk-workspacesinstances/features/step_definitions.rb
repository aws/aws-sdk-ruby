Before("@workspacesinstances") do
  @service = Aws::WorkspacesInstances::Resource.new
  @client = @service.client
end

After("@workspacesinstances") do
  # shared cleanup logic
end
