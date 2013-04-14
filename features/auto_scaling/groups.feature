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
@auto_scaling @groups
Feature: Auto Scaling Groups

  Scenario: Creating an auto scaling group
    Given I create a launch configuration
    When I create an auto scaling group
    Then the auto scaling group should exist

  Scenario: Getting an auto scaling group
    Given I create a launch configuration
    When I create an auto scaling group
    And I get the auto scaling group by name
    Then the auto scaling group should have the options I created it with

  Scenario: Deleting an auto scaling group
    Given I create a launch configuration
    And I create an auto scaling group
    When I delete the auto scaling group
    Then the auto scaling group should not exist

  Scenario: Suspending processes
    Given I create a launch configuration
    And I create an auto scaling group
    When I suspend the "Launch" process
    Then the auto scaling group should contain "Launch" in the suspended processes

  Scenario: Suspending all processes
    Given I create a launch configuration
    And I create an auto scaling group
    When I suspend all processes
    Then the auto scaling group should have all processes suspended

  Scenario: Resuming processes
    Given I create a launch configuration
    And I create an auto scaling group
    And I suspend the "Launch" process
    When I resume the "Launch" process
    Then the auto scaling group should not contain "Launch" in the suspended processes

  Scenario: Resuming all processes
    Given I create a launch configuration
    And I create an auto scaling group
    And I suspend all processes
    When I resume all processes
    Then the auto scaling group should have no suspended processes

  Scenario: Metrics collection
    Given I create a launch configuration
    And I create an auto scaling group
    When I enable all metrics collection
    Then the auto scaling group should have all metrics enabled for "1Minute"
    When I disable all metrics collection
    Then the auto scaling group should have no enabled metrics.

