# language: en
@dynamodb @client
Feature: Amazon Elastic Compute Cloud

  Scenario: DescribeRegions
    Given I describe the EC2 region "us-west-2"
    Then the EC2 endpoint for the region should be "ec2.us-west-2.amazonaws.com"

  Scenario: Error handling
    Given I describe a non-existent instance
    Then a "InvalidInstanceIDNotFound" error should be raised
