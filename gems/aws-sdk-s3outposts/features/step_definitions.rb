Before("@s3outposts") do
  @service = Aws::S3Outposts::Resource.new
  @client = @service.client
end

After("@s3outposts") do
  # shared cleanup logic
end
