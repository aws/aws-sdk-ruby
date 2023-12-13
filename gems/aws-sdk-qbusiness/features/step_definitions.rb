Before("@qbusiness") do
  @service = Aws::QBusiness::Resource.new
  @client = @service.client
end

After("@qbusiness") do
  # shared cleanup logic
end
