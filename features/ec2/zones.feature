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
@ec2 @zones
Feature: Availability Zones

  As a user of the high-level interface for EC2
  I want to find out which availability zones are available for me to use
  So I can make my application more tolerant to single-datacenter failures

  Scenario: List availability zones
    When I ask for the list of EC2 availability zones
    Then the result should contain the following zone information:
    | name       | region    |
    | us-east-1b | us-east-1 |

  @memoized
  Scenario: List availability zones with memoization
    Given I start a memoization block
    When I group the availability zones by state
    And I count the availability zones
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE                     |
    | param | Action | DescribeAvailabilityZones |
