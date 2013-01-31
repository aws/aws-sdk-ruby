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
@ec2 @regions
Feature: Regions

  As a user of the high-level interface for EC2
  I want to code against the various EC2 regional endpoints
  So that I can use different regions for my application

  Scenario: List regions
    When I ask for the list of EC2 regions
    Then the result should contain the following region information:
    | name      | endpoint                    |
    | us-east-1 | ec2.us-east-1.amazonaws.com |
    | eu-west-1 | ec2.eu-west-1.amazonaws.com |

  @memoized
  Scenario: List regions
    Given I start a memoization block
    When I compute a hash of region name to region endpoint
    And I count the regions available to my account
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | DescribeRegions |

  Scenario: Check that a region exists (does not exist)
    Given I ask for the region "mars-west-12" by name
    When I ask if the region exists
    Then the result should be false

  Scenario: Check that a region exists (exists)
    Given I ask for the first region
    When I ask if the region exists
    Then the result should be true

  Scenario: Regional interface
    Given I use the regional interface for "us-west-1"
    When I ask for the list of EC2 availability zones
    Then a request should have been made like:
    | TYPE | NAME | VALUE                       |
    | http | host | ec2.us-west-1.amazonaws.com |

  Scenario: Multiple regional interfaces
    Given I use the regional interface for "us-west-1"
    And I ask for the list of EC2 availability zones
    When I use the regional interface for "us-east-1"
    And I ask for the list of EC2 availability zones
    Then a request should have been made like:
    | TYPE | NAME | VALUE                       |
    | http | host | ec2.us-west-1.amazonaws.com |
    And a request should have been made like:
    | TYPE | NAME | VALUE                       |
    | http | host | ec2.us-east-1.amazonaws.com |
