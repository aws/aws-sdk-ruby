# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

@ec2 @elastic_ips
Feature: EC2 Elastic IPs

  As a user of the high-level interface for EC2
  I want to manage elastic ip addresses

  Scenario: Allocating an elastic ip address
    When I allocate an elastic ip
    And I list allocated elastic ips
    Then The list should contain the elastic ip

  Scenario: Releasing an elastic ip address
    Given I allocate an elastic ip
    When I release the elastic ip address
    And I list allocated elastic ips
    Then The list should not contain the elastic ip

  @slow
  Scenario: Associating an elastic ip address with an instance
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And the instance status should eventually be "running"
    And I allocate an elastic ip
    When I associate the elastic ip with the instance
    Then The instance should eventually have the new elastic ip

  @memoized
  Scenario: Listing elastic ip addresses with memoization
    Given I allocate an elastic ip
    And I start a memoization block
    When I compute a map of public IP address to instance ID
    And I count the elastic IPs in my account
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeAddresses |

  @vpc @subnet @instances @elastic_ips @internet_gatweays @slow @wip
  Scenario: Working with VPC elastic IPs
    Given I create a vpc with the cidr block "10.0.0.0/16"
    And I create an internet gateway
    And I attach the internet gateway to the vpc
    And I create a subnet with the with the cidr block "10.0.0.0/16"
    And I allocate a VPC elastic ip
    When I request to run vpc instance in the subnet
    Then the instance status should eventually be "running"
    When I associate the elastic ip with the instance
    Then the instance public ip address should match the elastic ip address
    When I disassociate the elastic ip address
    And I release the elastic ip address
    Then the elastic ip should not exits

  @vpc @subnet @instances @elastic_ips @internet_gatweays @slow
  Scenario: Associating an elastic ip with a network interface
    Given I create a vpc
    And I create a subnet
    And I create an internet gateway
    And I attach the internet gateway to the vpc
    And I create a network interface
    And I allocate a VPC elastic ip
    When I associate the network interface to the elastic ip
    Then the elastic ip should be assigned to the network interface
    # cleanup some (the normal test cleanup can get the rest)
    When I disassociate the elastic ip address
    And I release the elastic ip address
