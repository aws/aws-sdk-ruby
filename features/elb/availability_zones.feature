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
@elb @ec2 @availability_zones
Feature: ELB Availability Zones

  As a user of Elastic Load Balancing
  I want to add and remove availability zones

  @enable
  Scenario: Adding availability Zones
    Given I create a load balancer with the following availability zones:
    | AZ_NAME    |
    | us-east-1b |
    | us-east-1c |
    When I enable the availability zone "us-east-1d" for the load balancer
    Then the load balancer should have the following availability zones:
    | AZ_NAME    |
    | us-east-1b |
    | us-east-1c |
    | us-east-1d |

  @enable
  Scenario: Removing availability Zones
    Given I create a load balancer with the following availability zones:
    | AZ_NAME    |
    | us-east-1b |
    | us-east-1c |
    | us-east-1d |
    When I disable the availability zone "us-east-1c" for the load balancer
    Then the load balancer should have the following availability zones:
    | AZ_NAME    |
    | us-east-1b |
    | us-east-1d |
