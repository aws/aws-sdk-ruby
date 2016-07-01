Before("@ecr") do
  @service = Aws::ECR::Resource.new
  @client = @service.client
end

After("@ecr") do
  # shared cleanup logic
end
