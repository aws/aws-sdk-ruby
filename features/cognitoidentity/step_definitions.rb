Before("@cognitoidentity") do
  @client = Aws::CognitoIdentity::Client.new
end

After("@cognitoidentity") do
end
