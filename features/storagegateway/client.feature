# language: en
@storagegateway @client
Feature: AWS Storage Gateway

  Scenario: Making a basic request
    When I call "list_gateways" on "storagegateway"
    Then the response "gateways" should be an array

  Scenario: Error handling
    Given I call "list_volumes" on "storagegateway" with:
    """
    { gateway_arn: 'fake_gateway' }
    """
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    Value 'fake_gateway' at 'gatewayARN' failed to satisfy constraint
    """
