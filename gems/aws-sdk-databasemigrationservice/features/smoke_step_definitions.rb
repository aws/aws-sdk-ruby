# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

# Shared Smoke Test Definitions
Given(/I create a client in region '(.*?)'/) do |region|
  @regional_client = Aws::DatabaseMigrationService::Client.new(region: region)
end

Given(/I create a client with endpoint '(.*?)'/) do |endpoint|
  @regional_client = Aws::DatabaseMigrationService::Client.new(endpoint: endpoint)
end

When(/I call the operation '(.*?)' with params:/) do |operation, params|
  opts = JSON.parse(params, symbolize_names: true)
  begin
    @regional_client.send(operation.to_sym, opts)
    @operation_raised_error = false
  rescue StandardError
    @operation_raised_error = true
  end
end

Then(/I expect an error was raised/) do
  expect(@operation_raised_error).to be_truthy
end

Then(/I expect an error was not raised/) do
  expect(@operation_raised_error).not_to be_truthy
end
