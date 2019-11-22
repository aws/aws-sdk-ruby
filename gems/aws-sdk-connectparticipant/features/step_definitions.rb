Before("@connectparticipant") do
  @service = Aws::ConnectParticipant::Resource.new
  @client = @service.client
end

After("@connectparticipant") do
  # shared cleanup logic
end
