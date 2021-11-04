Before("@chimesdkmeetings") do
  @service = Aws::ChimeSDKMeetings::Resource.new
  @client = @service.client
end

After("@chimesdkmeetings") do
  # shared cleanup logic
end
