Before("@gluedatabrew") do
  @service = Aws::GlueDataBrew::Resource.new
  @client = @service.client
end

After("@gluedatabrew") do
  # shared cleanup logic
end
