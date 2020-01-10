# language: en
@ec2 @resource
Feature: Aws::EC2::Volume

  Scenario: Wait until volume is available
    Given I create a volume
    When I use #wait_until to wait until volume is available
    Then Waiter works as expected
