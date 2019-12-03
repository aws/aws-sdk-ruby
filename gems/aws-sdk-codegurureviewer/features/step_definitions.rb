Before("@codegurureviewer") do
  @service = Aws::CodeGuruReviewer::Resource.new
  @client = @service.client
end

After("@codegurureviewer") do
  # shared cleanup logic
end
