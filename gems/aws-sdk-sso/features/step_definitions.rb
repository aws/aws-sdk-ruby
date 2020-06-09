Before("@sso") do
  @service = Aws::SSO::Resource.new
  @client = @service.client
end

After("@sso") do
  # shared cleanup logic
end
