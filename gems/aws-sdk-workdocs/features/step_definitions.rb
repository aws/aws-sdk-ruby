Before("@workdocs") do
  @service = Aws::WorkDocs::Resource.new
  @client = @service.client
end

After("@workdocs") do
  # shared cleanup logic
end
