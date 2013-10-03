Given(/^I disable translation features Aws::DynamoDB$/) do
  subclass = Aws::DynamoDB.versioned_clients.last.extend
  subclass.remove_plugin(Seahorse::Client::Plugins::ParamConversion)
  subclass.remove_plugin(Seahorse::Client::Plugins::ParamValidation)
  subclass.remove_plugin(Aws::Plugins::GlobalConfiguration)
  subclass.remove_plugin(Aws::Plugins::JsonProtocol)
  @dynamodb = subclass.new
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
