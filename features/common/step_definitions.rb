def call_request(service, operation_name, params = {})
  service = instance_variable_get("@#{service}")
  @response = service.build_request(operation_name, params).send_request
  @error = @response.error
  @response
end

def eventually(seconds = 15, &block)

  # generate a list of times-to-sleep that add up to less than `seconds'
  sleeps = [1]
  while sleeps.inject(0) { |sum, i| sum + i } < seconds
    sleeps << sleeps.last * 1.2
  end

  begin
    yield
  rescue => error
    unless sleeps.empty?
      sleep(sleeps.shift)
      retry
    end
    raise error # terminal case
  end

end

When(/^I call "(.*?)" on "(.*?)"$/) do |operation, service|
  call_request(service, operation)
end

When(/^I call "(.*?)" on "(.*?)" with:$/) do |operation, service, params|
  call_request(service, operation, eval(params))
end

Then(/^the response data should include "(.*?)"$/) do |member_name|
  expect(@response.data.members).to include(member_name.to_sym)
end

Then(/^the response "(.*?)" should be an array$/) do |expression|
  item = eval("@response.#{expression}")
  expect(item).to be_an(Array)
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

Then(/^I expect the response error code to be "(.*?)"$/) do |error_class|
  expect(@error.class.name).to match(error_class)
end

Then(/^I expect the response error message to include:$/) do |message|
  expect(@error.message).to include(message)
end
