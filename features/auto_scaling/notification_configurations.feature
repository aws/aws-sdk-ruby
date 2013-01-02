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
@auto_scaling @notification_configurations @sns
Feature: Auto Scaling Notification Configurations

  Scenario: Creating notification configurations
    Given I create a launch configuration
    And I create an auto scaling group
    And I create an SNS topic
    When I create a notification configuration for the group
    Then the auto scaling group should have the notification configuration

  Scenario: Deleting notification configurations
    Given I create a launch configuration
    And I create an auto scaling group
    And I create an SNS topic
    When I create a notification configuration for the group
    And I delete the notification configuration
    Then the group should have no notification configurations

