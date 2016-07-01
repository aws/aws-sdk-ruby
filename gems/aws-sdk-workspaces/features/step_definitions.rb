Before("@workspaces") do
  @service = Aws::WorkSpaces::Resource.new
  @client = @service.client
end

After("@workspaces") do
  # shared cleanup logic
end
