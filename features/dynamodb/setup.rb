Before("@dynamodb") do
  @dynamodb = Aws.dynamodb
end

After("@dynamodb") do
end
