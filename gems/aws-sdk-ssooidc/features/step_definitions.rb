Before("@ssooidc") do
  @service = Aws::SSOOIDC::Resource.new
  @client = @service.client
end

After("@ssooidc") do
  # shared cleanup logic
end
