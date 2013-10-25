# language: en
@elasticloadbalancing @client
Feature: Elastic Load Balancing

  Scenario: Making a basic request
    When I call "describe_load_balancers" on "elasticloadbalancing"
    Then the response "load_balancer_descriptions" should be an array

  Scenario: Error handling
    Given I call "describe_load_balancers" on "elasticloadbalancing" with:
    """
    { load_balancer_names: ['fake_load_balancer'] }
    """
    Then I expect the response error code to be "ValidationError"
    And I expect the response error message to include:
    """
    LoadBalancer name cannot contain characters that are not letters, or digits or the dash.
    """
