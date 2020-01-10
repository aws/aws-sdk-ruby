Before("@iot1clickprojects") do
  @service = Aws::IoT1ClickProjects::Resource.new
  @client = @service.client
end

After("@iot1clickprojects") do
  # shared cleanup logic
end
