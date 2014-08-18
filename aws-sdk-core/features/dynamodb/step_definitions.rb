Before("@dynamodb") do
  @client = Aws::DynamoDB::Client.new
end

After("@dynamodb") do
end

Given(/^I disable translation features Aws::DynamoDB$/) do
  @simple_json = true
  @client = Aws::DynamoDB::Client.new(simple_json: true)
end
