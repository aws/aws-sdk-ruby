Before("@machinelearning") do
  @service = Aws::MachineLearning::Resource.new
  @client = @service.client
end

After("@machinelearning") do
  # shared cleanup logic
end
