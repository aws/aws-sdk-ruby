# frozen_string_literal: true

Before("@cognitoidentity") do
  @client = Aws::CognitoIdentity::Client.new
end

After("@cognitoidentity") do
end

Given(/^I have an Aws::CognitoIdenty::Client without credentials$/) do
  @client = Aws::CognitoIdentity::Client.new(
    credentials: nil,
    validate_params: false
  )
  expect(@client.config.credentials).to be(nil)
end

When(/^I make a (\w+) request$/) do |operation|
  begin
    @client.send(AwsSdkCodeGenerator::Underscore.underscore(operation))
  rescue => error
    @error = error
  end
end

Then(/^I should not receive an Aws::CognitoIdentity::Errors::MissingAuthenticationTokenException$/) do
  expect(@error).not_to be_kind_of(Aws::CognitoIdentity::Errors::MissingAuthenticationTokenException)
end

Then(/^I should receive a missing credentials error$/) do
  expect(@error).to be_kind_of(Aws::Errors::MissingCredentialsError)
end
