# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
@ec2 @vpc
Feature: EC2 VPC

  A limited set of features required to work with EC2 VPCs.

  @instances
  Scenario: Run an Amazon EC2 instance in a VPC subnet
    Given I create a vpc with the cidr block "10.0.0.0/16"
    And I create a subnet with the cidr block "10.0.0.0/16"
    When I request to run an vpc instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    Then The result should be an instance object
    And the instance should have the correct vpc_id
    And a request should have been made like:
    | TYPE        | NAME     | VALUE |
    | param_match | SubnetId | ^.*$  |

  @security_group
  Scenario: authorizing egress ip addresses
    Given I create a vpc with the cidr block "10.0.0.0/16"
    And I create a vpc security group
    When I authorize "10.0.0.0/0" egress with:
    | OPTION   | VALUE |
    | protocol | tcp   |
    | ports    | 80    |
    Then a request should have been made like:
    | TYPE  | NAME                              | VALUE                        |
    | param | Action                            | AuthorizeSecurityGroupEgress |
    | param | IpPermissions.1.IpRanges.1.CidrIp | 10.0.0.0/0                   |
    | param | IpPermissions.1.IpProtocol        | tcp                          |
    | param | IpPermissions.1.FromPort          | 80                           |
    | param | IpPermissions.1.ToPort            | 80                           |
    When I revoke the returned ip permission
    Then a request should have been made like:
    | TYPE  | NAME                              | VALUE                     |
    | param | Action                            | RevokeSecurityGroupEgress |
    | param | IpPermissions.1.IpRanges.1.CidrIp | 10.0.0.0/0                |
    | param | IpPermissions.1.IpProtocol        | tcp                       |
    | param | IpPermissions.1.FromPort          | 80                        |
    | param | IpPermissions.1.ToPort            | 80                        |
