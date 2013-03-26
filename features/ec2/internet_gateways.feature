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
@ec2 @vpc @internet_gateways
Feature: EC2 VPC Internet Gateways

  Scenario: Create an internet gateway
    When I create an internet gateway
    Then the internet gateway should exist
    And a request should have been made like:
    | TYPE  | NAME   | VALUE                 |
    | param | Action | CreateInternetGateway |

  Scenario: Delete an internet gateway
    Given I create an internet gateway
    When I delete the internet gateway
    Then the internet gateway should not exist
    And a request should have been made like:
    | TYPE  | NAME   | VALUE                 |
    | param | Action | DeleteInternetGateway |

  Scenario: Attaching to a VPC
    Given I create a vpc
    And I create an internet gateway
    When I attach the internet gateway to the vpc
    Then the internet gateway's vpc should match
    When I detach the internet gateway
    Then the internet gateway should have no vpc or attachment
