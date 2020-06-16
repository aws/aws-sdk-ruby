# frozen_string_literal: true

Before("@dynamodb") do
  @service = Aws::DynamoDB::Resource.new
  @client = @service.client
end

After("@dynamodb") do
  # shared cleanup logic
end

When(/^I enable endpoint discovery at client$/) do
  @ed_client = Aws::DynamoDB::Client.new(endpoint_discovery: true)
end

When(/^I make describe_limits call$/) do
  @resp = @ed_client.describe_limits
end

Then(/^I expect describe_endpoints is called first$/) do
  expect(ApiCallTracker.called_operations.first).to eq(:describe_endpoints)
end

Then(/^I expect API call is made through discovered endpoint$/) do
  discover_resp = ApiCallTracker.api_calls.first
  @discovered_enpoint = nil
  if discover_resp && discover_resp.key?(:endpoints)
    @discovered_enpoint = discover_resp.endpoints.first.address if discover_resp.endpoints.size == 1
  end
  if @discovered_enpoint
    expect(@resp.context.http_request.endpoint.to_s).to include(@discovered_enpoint)
  end
end

Then(/^discovered endpoint is cached$/) do
  if @discover_endpoint
    cache = @ed_client.config.endpoint_cache
    expect(cache.entries).not_to be_empty
  end
end
