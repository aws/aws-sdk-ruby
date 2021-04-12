Before("@mgn") do
  @service = Aws::Mgn::Resource.new
  @client = @service.client
end

After("@mgn") do
  # shared cleanup logic
end
