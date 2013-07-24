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
@ec2 @reserved_instances
Feature: EC2 Reserved Instances

  As a user of the high-level interface for EC2
  I want to describe and purchase reserved instance offerings
  So that I can save money

  Scenario: Describing reserved instance offerings
    When I enumerate reserved instance offerings
    Then a request should have been made like:
    | TYPE  | NAME       | VALUE                              |
    | param | Action     | DescribeReservedInstancesOfferings |

  Scenario: Paging reserved instance offerings
    When I enumerate reserved instance offerings with a limit of 10 and batch size of 2
    Then 5 requests should have been made like:
    | TYPE  | NAME       | VALUE                              |
    | param | Action     | DescribeReservedInstancesOfferings |

  @memoized
  Scenario: Describing reserved instance offerings with memoization
    Given I start a memoization block
    And I find the cheapest fixed price for a Linux/UNIX reserved instance
    And I find the most expensive fixed price for a Linux/UNIX reserved instance
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE                              |
    | param | Action | DescribeReservedInstancesOfferings |

  Scenario: Filtering reserved instances offerings
    When I get a list of reserved instances offerings like:
    """
      @ec2.reserved_instances_offerings.filter('instance-type', 'm1.small').to_a
    """
    Then a request should have been made like:
    | TYPE  | NAME       | VALUE                              |
    | param | Action     | DescribeReservedInstancesOfferings |
    | param | Filter.1.Value.1 | m1.small                     |
    | param | Filter.1.Name    | instance-type                |

  # not functional as we don't have a reseved intstance offering
  @wip
  Scenario: Purchasing a reserved instances offering
    When I purchase a reserved instances offering
    Then reserved instances should contain the returned reservation

  # not functional as we don't have a reseved intstance offering
  @wip
  Scenario: Getting details about a reservation
    Given I purchase a reserved instances offering
    When I get the fixed price for the reservation
    Then a request should have been made like:
    | TYPE        | NAME                  | VALUE                     |
    | param       | Action                | DescribeReservedInstances |
    | param_match | ReservedInstancesId.1 | .*                        |

  # not functional as we don't have a reseved intstance offering
  @memoized @wip
  Scenario: Describing reserved instances with memoization
    Given I purchase a reserved instances offering
    And I start a memoization block
    When I find the most expensive fixed price reservation in my account
    And I count the reservations I have purchased
    Then exactly 1 request should have been made like:
    | TYPE        | NAME                  | VALUE                     |
    | param       | Action                | DescribeReservedInstances |
