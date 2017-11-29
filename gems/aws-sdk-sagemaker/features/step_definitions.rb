Before("@sagemaker") do
  @service = Aws::SageMaker::Resource.new
  @client = @service.client
end

After("@sagemaker") do
  # shared cleanup logic
end
