Before("@gameliftstreams") do
  @service = Aws::GameLiftStreams::Resource.new
  @client = @service.client
end

After("@gameliftstreams") do
  # shared cleanup logic
end
