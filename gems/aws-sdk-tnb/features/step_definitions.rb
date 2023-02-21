Before("@tnb") do
  @service = Aws::Tnb::Resource.new
  @client = @service.client
end

After("@tnb") do
  # shared cleanup logic
end
