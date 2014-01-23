Before("@dynamodb") do
  @dynamodb = @client = Aws.dynamodb
end

After("@dynamodb") do
end

Given(/^I disable translation features Aws::DynamoDB$/) do
  @simple_json = true
  @dynamodb = @client = Aws.dynamodb(simple_json: true)
end
