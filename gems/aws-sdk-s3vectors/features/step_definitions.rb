Before("@s3vectors") do
  @service = Aws::S3Vectors::Resource.new
  @client = @service.client
end

After("@s3vectors") do
  # shared cleanup logic
end
