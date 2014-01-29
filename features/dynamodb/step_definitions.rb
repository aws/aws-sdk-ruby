Before("@dynamodb") do
  @dynamodb = @client = Aws.dynamodb
end

After("@dynamodb") do
end

Given(/^I disable translation features Aws::DynamoDB$/) do
  @raw_json = true
  @dynamodb = @client = Aws.dynamodb(raw_json: true)
end
