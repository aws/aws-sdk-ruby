Before("@organizations") do
  @service = Aws::Organizations::Resource.new
  @client = @service.client
end

After("@organizations") do
  # shared cleanup logic
end
