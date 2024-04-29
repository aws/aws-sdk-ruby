Before("@chatbot") do
  @service = Aws::Chatbot::Resource.new
  @client = @service.client
end

After("@chatbot") do
  # shared cleanup logic
end
