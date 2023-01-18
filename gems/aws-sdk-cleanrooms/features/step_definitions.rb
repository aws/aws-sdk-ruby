Before("@cleanrooms") do
  @service = Aws::CleanRooms::Resource.new
  @client = @service.client
end

After("@cleanrooms") do
  # shared cleanup logic
end
