Before("@oam") do
  @service = Aws::OAM::Resource.new
  @client = @service.client
end

After("@oam") do
  # shared cleanup logic
end
