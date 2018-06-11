Before("@eks") do
  @service = Aws::EKS::Resource.new
  @client = @service.client
end

After("@eks") do
  # shared cleanup logic
end
