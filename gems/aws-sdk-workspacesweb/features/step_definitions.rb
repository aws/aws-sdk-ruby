Before("@workspacesweb") do
  @service = Aws::WorkSpacesWeb::Resource.new
  @client = @service.client
end

After("@workspacesweb") do
  # shared cleanup logic
end
