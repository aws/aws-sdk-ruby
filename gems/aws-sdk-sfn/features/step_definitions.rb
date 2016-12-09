Before("@sfn") do
  @service = Aws::SFN::Resource.new
  @client = @service.client
end

After("@sfn") do
  # shared cleanup logic
end
