# language: en
@configservice @client
Feature: AWS Config

  Scenario: Making a basic request
    When I call the "DescribeConfigurationRecorders" API
    Then the response should contain a list of "ConfigurationRecorders"

