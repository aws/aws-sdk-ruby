Before("@sns") do
  @service = Aws::SNS::Resource.new
  @client = @service.client
end

After("@sns") do
  # shared cleanup logic
end
