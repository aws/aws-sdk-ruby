Before("@wafv2") do
  @service = Aws::WAFV2::Resource.new
  @client = @service.client
end

After("@wafv2") do
  # shared cleanup logic
end
