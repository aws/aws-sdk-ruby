Before("@servicequotas") do
  @service = Aws::ServiceQuotas::Resource.new
  @client = @service.client
end

After("@servicequotas") do
  # shared cleanup logic
end
