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
@ec2 @vpc @subnets
Feature: EC2 VPC

  Scenario: Creating a Subnet
    Given I create a vpc with the cidr block "10.0.0.0/16"
    When I create a subnet with the with the cidr block "10.0.0.0/16"
    And a request should have been made like:
    | TYPE        | NAME      | VALUE        |
    | param       | Action    | CreateSubnet |
    | param_match | VpcId     | vpc-.+       |
    | param       | CidrBlock | 10.0.0.0/16  |

  Scenario: Deleting a Subnet
    Given I create a vpc with the cidr block "10.0.0.0/16"
    And I create a subnet with the with the cidr block "10.0.0.0/16"
    When I delete the subnet
    And a request should have been made like:
    | TYPE        | NAME      | VALUE        |
    | param       | Action    | DeleteSubnet |
    | param_match | SubnetId  | subnet-.+    |

  Scenario: Getting subnet attributes
    Given I create a vpc with the cidr block "10.0.0.0/16"
    And I create a subnet with the with the cidr block "10.0.0.0/16"
    When I get the subnet by id
    And I get its static attributes
    Then 1 request should have been made like:
    | TYPE        | NAME       | VALUE           |
    | param       | Action     | DescribeSubnets |
    | param_match | SubnetId.1 | subnet-.+       |

