Before("@robomaker") do
  @service = Aws::RoboMaker::Resource.new
  @client = @service.client
end

After("@robomaker") do
  # shared cleanup logic
end
