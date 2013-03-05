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
@ec2 @snapshots
Feature: Snapshot Attributes

  As a user of the high-level interface for EC2
  I want to read, modify, and reset snapshot attributes
  So that I can better manage my existing snapshots

  Scenario: Get simple snapshot attributes
    Given I create a snapshot with description "foobar"
    Then the snapshot volume ID should match the volume it was created from
    And the snapshot status should be one of:
    | pending   |
    | completed |
    | error     |
    And the snapshot start time should be within a minute of now
    And the snapshot progress should be between 0 and 100
    And the snapshot owner ID should be the account ID
    And the snapshot volume size should be 1
    And the snapshot owner alias should be nil
    And the snapshot description should be "foobar"

  Scenario: Get snapshot create volume permissions
    Given I create a snapshot
    Then the snapshot create volume permissions should be empty
    And the snapshot should be private

  @memoized
  Scenario: Memoized create volume permissions
    Given I create a snapshot
    When I add snapshot create volume permissions for the user "599169622985"
    And I start a memoization block
    And I get the snapshot create volume permissions
    And I get the snapshot create volume permissions again
    Then the snapshot create volume permissions should include:
    | 599169622985 |
    And exactly 1 request should have been made like:
    | TYPE  | NAME      | VALUE                     |
    | param | Action    | DescribeSnapshotAttribute |
    | param | Attribute | createVolumePermission    |

  @set
  Scenario: Make snapshot public
    Given I create a snapshot
    When I make the snapshot public
    Then the snapshot create volume permissions should be empty
    And the snapshot should be public

  @set
  Scenario: Remove explicit snapshot create volume permission
    Given I create a snapshot
    And I add snapshot create volume permissions for the user "599169622985"
    And the snapshot create volume permissions should include:
    | 599169622985 |
    When I remove snapshot create volume permissions for the user "599169622985"
    Then the snapshot create volume permissions should be empty

  @reset
  Scenario: Reset snapshot create volume permissions
    Given I create a snapshot
    And I add snapshot create volume permissions for the user "599169622985"
    When I reset the snapshot create volume permissions
    Then the snapshot create volume permissions should be empty
