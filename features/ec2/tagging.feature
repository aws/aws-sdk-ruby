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

@ec2 @tagging
Feature: EC2 Tagging

  As a user of the high-level interface for EC2
  I want to tag resources

  @instances @slow
  Scenario: Tagging an instance
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And the instance status should eventually be "running"
    When I call the "instance" resource
    Then the resource should be taggable

  @instances @memoized @slow
  Scenario: Instance tags memoized from DescribeInstances
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And the instance status should eventually be "running"
    When I call the "instance" resource
    Then the resource should memoize tags properly

  @security_groups
  Scenario: Tagging security group
    Given I create a security group
    When I call the "security_group" resource
    Then the resource should be taggable

  @security_groups @memoized
  Scenario: Security group tags memoized from DescribeSecurityGroups
    Given I create a security group
    When I call the "security_group" resource
    Then the resource should memoize tags properly

  @images
  Scenario: Tagging an image
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | description    | foobar                           |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And the image description should eventually be "foobar"
    When I call the "image" resource
    Then the resource should be taggable

  @images @memoized
  Scenario: Image tags memoized from DescribeImages
    Given I create an image with the following parameters:
    | parameter      | value                            |
    | name           | my-image                         |
    | description    | foobar                           |
    | image_location | ruby-sdk-amis/image.manifest.xml |
    And the image description should eventually be "foobar"
    When I call the "image" resource
    Then the resource should memoize tags properly

  @volumes
  Scenario: Tagging a volume
    Given I create a volume
    When I call the "volume" resource
    Then the resource should be taggable

  @volumes @memoized
  Scenario: Volume tags memoized from DescribeVolumes
    Given I create a volume
    When I call the "volume" resource
    Then the resource should memoize tags properly

  @snapshots
  Scenario: Tagging a snapshot
    Given I create a snapshot
    When I call the "snapshot" resource
    Then the resource should be taggable

  @snapshots @memoized
  Scenario: Snapshot tags memoized from DescribeSnapshots
    Given I create a snapshot
    When I call the "snapshot" resource
    Then the resource should memoize tags properly

  @memoized
  Scenario: Listing all tags with memoization
    Given I create a volume
    And I call the "volume" resource
    And I tag the resource "ruby-test-1-key" with the value "ruby-test-1-value"
    And I start a memoization block
    When I compute the set of all tag values
    And I list all tagged resources grouped by the tag values of "ruby-test-1-key"
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE        |
    | param | Action | DescribeTags |
