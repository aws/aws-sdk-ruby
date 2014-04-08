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
@ec2 @vpc @route_tables
Feature: EC2 Route Tables

  Scenario: Creating a Route Table
    Given I create a vpc
    When I create a route table
    Then a request should have been made like:
    | TYPE        | NAME      | VALUE            |
    | param       | Action    | CreateRouteTable |
    | param_match | VpcId     | vpc-.+           |

  Scenario: Deleting a Route Table
    Given I create a vpc
    And I create a route table
    When I delete the route table
    Then a request should have been made like:
    | TYPE        | NAME         | VALUE            |
    | param       | Action       | DeleteRouteTable |
    | param_match | RouteTableId | rtb-.+           |

  Scenario: Working with the default route table
    Given I create a vpc
    And I create a subnet
    Then the subnet route table should be the main route table

  Scenario: Associating subnets to route tables
    Given I create a vpc
    And I create a route table
    And I create a subnet
    When I assign the route table to the subnet
    Then the route table should be associated with the subnet
    And the main route table should have no associated subnets
    And a request should have been made like:
    | TYPE        | NAME         | VALUE               |
    | param       | Action       | AssociateRouteTable |
    | param_match | RouteTableId | rtb-.+              |

  @slow
  Scenario: Adding routes to a route table
    Given I create a vpc
    And I create a subnet
    When I request to run an vpc instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I create a route table
    When I create a route for the vpc instance
    Then the route table should have 2 routes
    And a request should have been made like:
    | TYPE        | NAME          | VALUE       |
    | param       | Action        | CreateRoute |
    | param_match | RouteTableId  | rtb-.+      |


