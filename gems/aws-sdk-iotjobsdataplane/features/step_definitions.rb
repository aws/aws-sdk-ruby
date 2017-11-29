Before("@iotjobsdataplane") do
  @service = Aws::IoTJobsDataPlane::Resource.new
  @client = @service.client
end

After("@iotjobsdataplane") do
  # shared cleanup logic
end
