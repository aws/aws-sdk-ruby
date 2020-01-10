Before("@macie") do
  @service = Aws::Macie::Resource.new
  @client = @service.client
end

After("@macie") do
  # shared cleanup logic
end
