Before("@nimblestudio") do
  @service = Aws::NimbleStudio::Resource.new
  @client = @service.client
end

After("@nimblestudio") do
  # shared cleanup logic
end
