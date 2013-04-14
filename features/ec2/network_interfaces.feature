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

# language: en
@ec2 @vpc @network_interfaces
Feature: EC2 Network Interfaces

  Scenario: Creating a Network Interface
    Given I create a vpc
    And I create a subnet
    When I create a network interface
    Then a request should have been made like:
    | TYPE        | NAME      | VALUE                  |
    | param       | Action    | CreateNetworkInterface |
    | param_match | SubnetId  | subnet-.+              |

  Scenario: Getting a Network Interface
    Given I create a vpc
    And I create a subnet
    And I create 2 vpc security groups
    And I create a network interface with the security groups and described as "test"
    When I get the network interface by id
    Then the network interface should have the security groups
    And the network should be descrbied as "test"

  Scenario: Changing security groups for a network interface
    Given I create a vpc
    And I create a subnet
    And I create 2 vpc security groups
    And I create a network interface
    When I assign the security groups to the network interface
    And I get the network interface by id
    Then the network interface should have the security groups assigned

  Scenario: Chaing network interface source destination check
    Given I create a vpc
    And I create a subnet
    And I create a network interface
    Then the source destination check should be "true"
    When I set the source destination check to "false"
    Then the source destination check should be "false"

  @slow
  Scenario: Attaching a Network Interface to an Instance
    Given I create a vpc
    And I create a subnet
    And I create a network interface
    And I create a network interface
    And I request to run an vpc instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    Then the instance status should eventually be "running"
    When I attach the network interface to the instance at index 1
    Then the network interface instance should match
    When I set the network interface attachment delete on termination to "false"
    Then the network interface attachment delete on termination should be "false"
    When I set the network interface attachment delete on termination to "true"
    Then the network interface attachment delete on termination should be "true"
    When I detach the network interface from the instance
    Then the network interface should have no attachment and no instance
    And the instance network interfaces should not include this one

