Before("@proton") do
  @service = Aws::Proton::Resource.new
  @client = @service.client
end

After("@proton") do
  # shared cleanup logic
end
