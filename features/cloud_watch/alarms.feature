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
@cloud_watch @metrics
Feature: CloudWatch metrics

  @create
  Scenario: Creating an alarm
    Given I have a metric
    When I create an alarm
    Then the alarm should exist

  @delete
  Scenario: Delting an alarm
    Given I have a metric
    When I create an alarm
    And I delete the alarm
    Then the alarm should not exist

  Scenario: Enumerating alarms
    Given I have a metric
    And I create an alarm
    When I enumerate the alarms
    Then The alarm should be in the list

  Scenario: Disabling alarm actions
    Given I have a metric
    And I create an alarm
    When I disable the alarm
    Then The alarm should be disabled

  Scenario: Enabling alarm actions
    Given I have a metric
    And I create an alarm
    And I disable the alarm
    When I enable the alarm
    Then The alarm should be enabled


