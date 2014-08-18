Before("@cognitosync") do
  @client = Aws::CognitoSync::Client.new
end

After("@cognitosync") do
end
