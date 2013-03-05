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
@cloud_formation @stacks
Feature: CloudFormations stacks

  Scenario: Creating stack
    When I create a stack
    Then the stack should exist

  Scenario: Getting a stack by name
    Given I create a stack
    When I get the stack by name
    Then It should have the description from the template

  Scenario: Getting a stack template
    When I create a stack
    Then the stack template should match

  @slow
  Scenario: Updating a stack
    Given I create a stack
    Then the stack status should eventually be "CREATE_COMPLETE"
    When I update the stack
    Then the stack status should eventually be "UPDATE_IN_PROGRESS"
    # we can not delete this stack until the update is complete,
    # this is imporant for cleanup up after the scenario
    And the stack status should eventually be "UPDATE_COMPLETE"

  Scenario: Getting a stack summary
    Given I create a stack
    Then I should be able to locate the stack in the summarized stacks

  Scenario: Deleting a stack
    Given I create a stack
    When I delete the stack
    Then the stack should eventually not exist

  @ec2
  Scenario: Creating a stack with parameters
    Given I create a security group
    And I create a key pair
    When I create a stack with parameters
    Then the stack paramters should match

  Scenario: Viewing stack events
    Given I create a stack
    Then the stack should eventually have some events
