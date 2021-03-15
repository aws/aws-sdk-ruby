Before("@fis") do
  @service = Aws::FIS::Resource.new
  @client = @service.client
end

After("@fis") do
  # shared cleanup logic
end
