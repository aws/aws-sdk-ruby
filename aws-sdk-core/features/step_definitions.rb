def eventually(options = {}, &block)
  seconds = options[:upto] || 15
  delays = [1]
  while delays.inject(0) { |sum, i| sum + i } < seconds
    delays << delays.last * 1.2
  end
  begin
    yield
  rescue StandardError, RSpec::Expectations::ExpectationNotMetError => error
    unless delays.empty?
      sleep(delays.shift)
      retry
    end
    raise error # terminal case
  end
end

def underscore(str)
  Seahorse::Util.underscore(str)
end

def symbolized_params(table)
  table.rows_hash.each_with_object({}) do |(key,value), hash|
    hash[underscore(key).to_sym] = param_value(value)
  end
end

def raw_params(table)
  table.rows_hash.each_with_object({}) do |(key,value), hash|
    hash[key] = param_value(value)
  end
end

def param_value(value)
  case value
  when /^\d+$/ then value.to_i
  when /^\[(.*)\]$/ then $1.split(',').map { |str| str[1..-2] }
  else value
  end
end

When(/^I call the "(.*?)" API$/) do |api|
  @response = @client.send(underscore(api))
end

When(/^I call the "(.*?)" API with:$/) do |api, params|
  params = @simple_json ? raw_params(params) : symbolized_params(params)
  @response = @client.send(underscore(api), params)
end

When(/^I attempt to call the "(.*?)" API with:$/) do |api, params|
  params = @simple_json ? raw_params(params) : symbolized_params(params)
  begin
    @response = @client.send(underscore(api), params)
  rescue Aws::Errors::ServiceError => @error
  end
end

Then(/^the response should contain a (list of )?"(\w+?)"$/) do |_,member_name|
  data = @response.data
  data = data[underscore(member_name)]
  expect(data).to be_an(Array)
end

Then(/^the response should contain a "(\w+?)" with a list of "(\w+?)"$/) do |member1, member2|
  data = @response.data
  data = data[underscore(member1)]
  data = data[underscore(member2)]
  expect(data).to be_an(Array)
end

Then(/^I expect the response error code to be "(.*?)"$/) do |error_code|
  expect(@error.class.name.split('::').last).to eq(error_code)
end

Then(/^I expect the response error message to include:$/) do |error_message|
  expect(@error.message).to include(error_message)
end

Then(/^the HTTP request body should be:$/) do |string|
  expect(@response.context.http_request.body_contents).to eq(string)
end

Then(/^I expect response data to be a hash$/) do
  expect(@response.data).to be_a(Hash)
end

Then(/^I expect response data\["(.*?)"\] to be an array$/) do |key|
  expect(@response.data[key]).to be_an(Array)
end

Then(/^the response should contain a "(.*?)" member$/) do |member_name|
  expect(@response.data[underscore(member_name)]).not_to be_nil
end
