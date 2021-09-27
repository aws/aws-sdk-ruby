Before("@voiceid") do
  @service = Aws::VoiceID::Resource.new
  @client = @service.client
end

After("@voiceid") do
  # shared cleanup logic
end
