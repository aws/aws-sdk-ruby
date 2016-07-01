Before("@waf") do
  @service = Aws::WAF::Resource.new
  @client = @service.client
end

After("@waf") do
  # shared cleanup logic
end
