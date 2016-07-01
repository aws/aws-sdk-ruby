Before("@iam") do
  @service = Aws::IAM::Resource.new
  @client = @service.client
end

After("@iam") do
  # shared cleanup logic
end
