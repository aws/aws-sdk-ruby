Given(/^I disable translation features Aws::DynamoDB$/) do
  @dynamodb = Aws.dynamodb(raw_json: true)
end

When(/^I call "(.*?)" on "(.*?)"$/) do |operation, service|
  call_request(service, operation)
end

When(/^I call "(.*?)" on "(.*?)" with the following params:$/) do |operation, service, params|
  call_request(service, operation, eval(params))
end

Then(/^the HTTP request body should be:$/) do |string|
  expect(@response.http_request.body_contents).to eq(string)
end

Then(/^I expect response data to be a hash$/) do
  expect(@response.data).to be_a(Hash)
end

Then(/^I expect response data\["(.*?)"\] to be an array$/) do |key|
  expect(@response.data[key]).to be_an(Array)
end

Then(/^I expect the response error to be "(.*?)"$/) do |error_class|
  expect(@error.class.name).to match(error_class)
end
