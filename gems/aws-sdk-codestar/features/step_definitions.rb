Before("@codestar") do
  @service = Aws::CodeStar::Resource.new
  @client = @service.client
end

After("@codestar") do
  # shared cleanup logic
end
