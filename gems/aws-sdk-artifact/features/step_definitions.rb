Before("@artifact") do
  @service = Aws::Artifact::Resource.new
  @client = @service.client
end

After("@artifact") do
  # shared cleanup logic
end
