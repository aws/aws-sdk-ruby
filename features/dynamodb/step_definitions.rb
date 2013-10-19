Given(/^I disable translation features Aws::DynamoDB$/) do
  @dynamodb = Aws.dynamodb(raw_json: true)
end
