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
@auto_scaling @instances
Feature: Auto Scaling Instances

  @slow
  Scenario: Creating notification configurations
    Given I create a launch configuration
    When I create an auto scaling group
    Then eventually there should be an auto scaling instance
    And the auto scaling instance should exist
    And the auto scaling should have a matching ec2 instance
    And the auto scaling should have a matching ec2 instance
    And the auto scaling should have the correct launch configuration
    And the auto scaling should have the correct launch configuration
