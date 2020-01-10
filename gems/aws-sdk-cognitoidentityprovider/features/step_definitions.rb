Before("@cognitoidentityprovider") do
  @service = Aws::CognitoIdentityProvider::Resource.new
  @client = @service.client
end

After("@cognitoidentityprovider") do
  # shared cleanup logic
end
