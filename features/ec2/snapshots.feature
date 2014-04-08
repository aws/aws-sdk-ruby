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
Feature: Basic Snapshot Operations

  As a user of the high-level interface for EC2
  I want to create, list, and delete snapshots
  So that I can use EBS.

  Scenario: Create Snapshot
    Given I create a volume with the following parameters:
    | parameter         | value      |
    | size              | 1          |
    | availability_zone | us-east-1b |
    When I create a snapshot from the volume
    Then the result should be a snapshot
    And a request should have been made like:
    | TYPE        | NAME     | VALUE          |
    | param       | Action   | CreateSnapshot |
    | param_match | VolumeId | vol-.+         |

  @memoized
  Scenario: Memoized attributes from CreateSnapshot
    Given I start a memoization block
    And I create a snapshot
    When I get the following attributes of the snapshot:
    | volume      |
    | status      |
    | start_time  |
    | progress    |
    | owner_id    |
    | volume_size |
    | description |
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeSnapshots |

  Scenario: List snapshots
    Given I create a volume with the following parameters:
    | parameter         | value      |
    | size              | 1          |
    | availability_zone | us-east-1b |
    And I create a snapshot from the volume
    When I ask for the list of snapshots
    Then the snapshot I created should be in the list
    And a request should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeSnapshots |

  @memoized
  Scenario: List snapshots with memoization
    Given I create a snapshot
    And I start a memoization block
    When I find the largest snapshot
    And I get all snapshots grouped by owner ID
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeSnapshots |

  Scenario: Delete a snapshot
    Given I create a volume with the following parameters:
    | parameter         | value      |
    | size              | 1          |
    | availability_zone | us-east-1b |
    And I create a snapshot from the volume
    When I delete the snapshot
    Then the snapshot should eventually not exist
    And a request should have been made like:
    | TYPE        | NAME       | VALUE          |
    | param       | Action     | DeleteSnapshot |
    | param_match | SnapshotId | snap-.+        |

  Scenario: Check that a snapshot exists (does not exist)
    Given I ask for the snapshot "snap-123" by ID
    When I ask if the snapshot exists
    Then the result should be false

  Scenario: Check that an snapshot exists (exists)
    Given I create a volume with the following parameters:
    | parameter         | value      |
    | size              | 1          |
    | availability_zone | us-east-1b |
    And I create a snapshot from the volume
    When I ask if the snapshot exists
    Then the result should be true
