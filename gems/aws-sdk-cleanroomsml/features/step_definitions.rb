Before("@cleanroomsml") do
  @service = Aws::CleanRoomsML::Resource.new
  @client = @service.client
end

After("@cleanroomsml") do
  # shared cleanup logic
end
