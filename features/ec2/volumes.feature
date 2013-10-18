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
@ec2 @volumes
Feature: Basic Volume Operations

  As a user of the high-level interface for EC2
  I want to create, list, and delete volumes
  So that I can use EBS.

  Scenario: Create empty volume
    When I create a volume with the following parameters:
    | parameter         | value      |
    | size              | 1          |
    | availability_zone | us-east-1b |
    Then the result should be a volume
    And a request should have been made like:
    | TYPE  | NAME             | VALUE        |
    | param | Action           | CreateVolume |
    | param | Size             | 1            |
    | param | AvailabilityZone | us-east-1b   |

  @memoized
  Scenario: Attributes memoized from CreateVolume
    Given I start a memoization block
    And I create a volume
    When I get the following attributes of the volume:
    | size              |
    | snapshot          |
    | availability_zone |
    | status            |
    | create_time       |
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | DescribeVolumes |

  Scenario: Create a volume from a snapshot
    Given I create a snapshot
    When I create a volume from the snapshot
    Then the result should be a volume
    And a request should have been made like:
    | TYPE        | NAME             | VALUE        |
    | param       | Action           | CreateVolume |
    | param       | AvailabilityZone | us-east-1b   |
    | param_match | SnapshotId       | snap-.+      |

  Scenario: List volumes
    Given I create a volume
    When I ask for the list of volumes
    Then the volume I created should be in the list
    And a request should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | DescribeVolumes |

  @memoized
  Scenario: List volumes with memoization
    Given I start a memoization block
    And I create a volume
    When I compute a hash of volume ID to status
    And I count the volumes in my account
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | DescribeVolumes |

  Scenario: Delete volume
    Given I create a volume
    When I delete the volume
    Then the volume should eventually be deleted
    And a request should have been made like:
    | TYPE        | NAME     | VALUE        |
    | param       | Action   | DeleteVolume |
    | param_match | VolumeId | vol-.+       |

  @slow @attachment
  Scenario: Attach volume
    Given I request to run an instance with the following parameters:
    | parameter         | value        |
    | image_id          | ami-8c1fece5 |
    And I create a 1GiB volume in the same availability zone as the instance
    And I wait for the instance status to be "running"
    When I attach the volume to the instance as device "/dev/sdf"
    Then the result should be an attachment
    And the attachment status should eventually be "attached"
    And the volume should have an attachment to the instance
    And a request should have been made like:
    | TYPE        | NAME       | VALUE        |
    | param       | Action     | AttachVolume |
    | param_match | VolumeId   | vol-.+       |
    | param_match | InstanceId | i-.+         |
    | param       | Device     | /dev/sdf     |

  @memoized @slow @attachment @wip
  Scenario: Attach volume with memoization
    Given I request to run an instance with the following parameters:
    | parameter         | value        |
    | image_id          | ami-8c1fece5 |
    And I create a 1GiB volume in the same availability zone as the instance
    And I wait for the instance status to be "running"
    And I start a memoization block
    When I attach the volume to the instance as device "/dev/sdf"
    Then the result should be an attachment
    And the attachment status should eventually be "attaching"
    And the volume should have an attachment to the instance
    And a request should have been made like:
    | TYPE        | NAME       | VALUE        |
    | param       | Action     | AttachVolume |
    | param_match | VolumeId   | vol-.+       |
    | param_match | InstanceId | i-.+         |
    | param       | Device     | /dev/sdf     |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | DescribeVolumes |

  @slow @attachment
  Scenario: Detach volume
    Given I request to run an instance with the following parameters:
    | parameter         | value        |
    | image_id          | ami-8c1fece5 |
    And I create a 1GiB volume in the same availability zone as the instance
    And I wait for the instance status to be "running"
    And I attach the volume to the instance as device "/dev/sdf"
    When I detach the volume from the instance as device "/dev/sdf"
    Then the attachment status should eventually reflect the detachment
    And a request should have been made like:
    | TYPE        | NAME       | VALUE        |
    | param       | Action     | DetachVolume |
    | param_match | VolumeId   | vol-.+       |
    | param_match | InstanceId | i-.+         |
    | param       | Device     | /dev/sdf     |

  @memoized @slow @attachment @wip
  Scenario: Detach volume
    Given I request to run an instance with the following parameters:
    | parameter         | value        |
    | image_id          | ami-8c1fece5 |
    And I create a 1GiB volume in the same availability zone as the instance
    And I wait for the instance status to be "running"
    And I attach the volume to the instance as device "/dev/sdf"
    And I start a memoization block
    When I detach the volume from the instance as device "/dev/sdf"
    Then the attachment status should eventually be "detaching"
    And a request should have been made like:
    | TYPE        | NAME       | VALUE        |
    | param       | Action     | DetachVolume |
    | param_match | VolumeId   | vol-.+       |
    | param_match | InstanceId | i-.+         |
    | param       | Device     | /dev/sdf     |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | DescribeVolumes |

  @memoized @wip
  Scenario: List attachments with memoization
    Given I request to run an instance with the following parameters:
    | parameter         | value        |
    | image_id          | ami-8c1fece5 |
    And I create a 1GiB volume in the same availability zone as the instance
    And I wait for the instance status to be "running"
    And I attach the volume to the instance as device "/dev/sdf"
    And I start a memoization block
    When I count the volumes in my account
    And I list the volume attachments
    Then the result should include the attachment I created
    And exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | DescribeVolumes |

  Scenario: Get volume by ID
    When I ask for the volume "vol-123" by ID
    Then the result should be a volume

  Scenario: Check that a volume exists (does not exist)
    Given I ask for the volume "vol-123" by ID
    When I ask if the volume exists
    Then the result should be false

  Scenario: Check that an volume exists (exists)
    Given I create a volume
    When I ask if the volume exists
    Then the result should eventually be true
