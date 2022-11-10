Before("@scheduler") do
  @service = Aws::Scheduler::Resource.new
  @client = @service.client
end

After("@scheduler") do
  # shared cleanup logic
end
