Before("@emrcontainers") do
  @service = Aws::EMRContainers::Resource.new
  @client = @service.client
end

After("@emrcontainers") do
  # shared cleanup logic
end
