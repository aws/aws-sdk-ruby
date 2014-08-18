# language: en
@elasticloadbalancing @client
Feature: Elastic Load Balancing

  Scenario: Making a basic request
    When I call the "DescribeLoadBalancers" API
    Then the response should contain a list of "LoadBalancerDescriptions"

  Scenario: Error handling
    When I attempt to call the "DescribeLoadBalancers" API with:
    | LoadBalancerNames | ['fake_load_balancer'] |
    Then I expect the response error code to be "ValidationError"
    And I expect the response error message to include:
    """
    LoadBalancer name cannot contain characters that are not letters, or digits or the dash.
    """
