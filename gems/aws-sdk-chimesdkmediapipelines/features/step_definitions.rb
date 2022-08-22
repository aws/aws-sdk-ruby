Before("@chimesdkmediapipelines") do
  @service = Aws::ChimeSDKMediaPipelines::Resource.new
  @client = @service.client
end

After("@chimesdkmediapipelines") do
  # shared cleanup logic
end
