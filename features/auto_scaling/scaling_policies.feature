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
@auto_scaling @scaling_policies
Feature: Auto Scaling Policies

  Scenario: Creating a policy
    Given I create a launch configuration
    And I create an auto scaling group
    When I create an auto scaling policy
    Then the auto scaling policy should exist
    And the auto scaling group policies should include the policy

  Scenario: Deleting policy
    Given I create a launch configuration
    And I create an auto scaling group
    And I create an auto scaling policy
    When I delete the auto scaling policy
    Then the auto scaling policy should not exist
    And the auto scaling group policies should not include the policy

  Scenario: Getting policy attributes
    Given I create a launch configuration
    And I create an auto scaling group
    And I create a scaling policy with the following options:
    | OPT                | VALUE            |
    | adjustment_type    | ChangeInCapacity |
    | scaling_adjustment | 2                |
    When I get the scaling policy by name
    Then the auto scaling policy adjustent type should be "ChangeInCapacity"
    And the auto scaling policy scaling adjustent should be 2
    And the cooldown should be nil

  Scenario: Updating a scaling policy
    Given I create a launch configuration
    And I create an auto scaling group
    And I create a scaling policy with the following options:
    | OPT                | VALUE            |
    | adjustment_type    | ChangeInCapacity |
    | scaling_adjustment | 2                |
    When I update the scaling policy with the following options:
    | OPT                | VALUE         |
    | adjustment_type    | ExactCapacity |
    | scaling_adjustment | 3             |
    | cooldown           | 1             |
    When I get the scaling policy by name
    Then the auto scaling policy adjustent type should be "ExactCapacity"
    And the auto scaling policy scaling adjustent should be 3
    And the cooldown should be 1
