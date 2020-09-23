# language: en
@leak-tests
Feature: Resource Leak Tests

#  @clients
#  Scenario: Creating and cleaning up clients doesn't leak resources
#    Given I create 1 service clients
#    And I take a snapshot of used resources
#    When I create 100 service clients
#    Then there should be no leaked resources

  @requests
  Scenario: Sending requests doesn't leak resources
    Given I send 1 requests using 1 threads
    And I take a snapshot of used resources
    When I send 100 requests using 10 threads
    Then there should be no leaked resources
