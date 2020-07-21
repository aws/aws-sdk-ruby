Before("@ivs") do
  @service = Aws::IVS::Resource.new
  @client = @service.client
end

After("@ivs") do
  # shared cleanup logic
end
