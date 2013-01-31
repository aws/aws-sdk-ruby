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
@auto_scaling @scheduled_actions
Feature: Auto Scaling Scheduled Actions

  Scenario: Create a scheduled action
    Given I create a launch configuration
    And I create an auto scaling group
    When I create a scheduled action
    Then the auto scaling group should have 1 scheduled action

  Scenario: Getting a scheduled action
    Given I create a launch configuration
    And I create an auto scaling group
    And I create a scheduled action
    When I get the scheduled action by name
    Then the scheduled action should have the correct attributes

  Scenario: Enumerating scheduled actions
    Given I create a launch configuration
    And I create an auto scaling group
    And I create a scheduled action
    Then the scheduled action should be in the list of scheduled actions

