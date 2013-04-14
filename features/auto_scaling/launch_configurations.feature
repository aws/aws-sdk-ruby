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
@auto_scaling @launch_configurations
Feature: Auto Scaling Launch Configurations

  Scenario: Creating a launch configuration
    When I create a launch configuration
    Then the launch configuration should exist

  Scenario: Deleting a launch configuration
    Given I create a launch configuration
    When I delete the launch configuration
    Then the launch configuration should not exist

  @ec2
  Scenario: Launch configuration attributes
    Given I create a key pair
    And I create 2 security groups
    And I create a launch configuration with options
    When I get the launch configuraiton by name
    Then the launch configuraiton should have the same attributes

