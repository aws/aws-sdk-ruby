Before("@codepipeline") do
  @service = Aws::CodePipeline::Resource.new
  @client = @service.client
end

After("@codepipeline") do
  # shared cleanup logic
end
