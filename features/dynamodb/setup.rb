Before("@dynamodb") do
  Aws.config[:dynamodb] ||= {}
  Aws.config[:dynamodb][:api_version] = '2012-08-10'
  @dynamodb = Aws.dynamodb
end

After("@dynamodb") do
end
