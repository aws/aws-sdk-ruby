Before("@amplify") do
  @service = Aws::Amplify::Resource.new
  @client = @service.client
end

After("@amplify") do
  # shared cleanup logic
end
