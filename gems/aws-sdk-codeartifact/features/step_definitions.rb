Before("@codeartifact") do
  @service = Aws::CodeArtifact::Resource.new
  @client = @service.client
end

After("@codeartifact") do
  # shared cleanup logic
end
