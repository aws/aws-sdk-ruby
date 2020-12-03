Before("@lookoutforvision") do
  @service = Aws::LookoutforVision::Resource.new
  @client = @service.client
end

After("@lookoutforvision") do
  # shared cleanup logic
end
