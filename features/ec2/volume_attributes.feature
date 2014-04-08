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
Feature: Volume attributes

  As a user of the high-level interface for EC2
  I want to read attributes of volumes
  So that I can better manage my EBS volumes.

  Scenario: Get volume size
    Given I create a volume with the following parameters:
    | parameter         | value      |
    | size              | 1          |
    | availability_zone | us-east-1b |
    Then the volume size should be 1

  Scenario: Get volume snapshot ID
    Given I create a snapshot
    When I create a volume from the snapshot
    Then the volume snapshot should match the snapshot it was created from

  Scenario: Get volume availability zone
    Given I create a volume with the following parameters:
    | parameter         | value      |
    | size              | 1          |
    | availability_zone | us-east-1b |
    Then the volume availability zone should be "us-east-1b"

  Scenario: Get volume create time
    Given I create a volume
    Then the volume create time should be within an hour of now
