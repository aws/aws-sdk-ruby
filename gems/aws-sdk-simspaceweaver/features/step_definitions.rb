Before("@simspaceweaver") do
  @service = Aws::SimSpaceWeaver::Resource.new
  @client = @service.client
end

After("@simspaceweaver") do
  # shared cleanup logic
end
