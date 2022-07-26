Before("@gamesparks") do
  @service = Aws::GameSparks::Resource.new
  @client = @service.client
end

After("@gamesparks") do
  # shared cleanup logic
end
