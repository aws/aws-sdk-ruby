Before("@personalize") do
  @service = Aws::Personalize::Resource.new
  @client = @service.client
end

After("@personalize") do
  # shared cleanup logic
end
