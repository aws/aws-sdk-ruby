Before("@personalizeevents") do
  @service = Aws::PersonalizeEvents::Resource.new
  @client = @service.client
end

After("@personalizeevents") do
  # shared cleanup logic
end
