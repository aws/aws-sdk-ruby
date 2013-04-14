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
@ec2 @vpc @vpn_gateways
Feature: EC2 VPC VPN Gateways

  Scenario: Create a vpn gateway
    When I create a vpn gateway
    Then the vpn gateway should exist
    And the vpn gateway state should eventually be "available"

  Scenario: Delete a vpn gateway
    Given I create a vpn gateway
    When I delete the vpn gateway
    Then the vpn gateway state should eventually be "deleted"

  @slow
  Scenario: Attaching a vpn gateway to a VPC
    Given I create a vpc
    And I create a vpn gateway
    When I attach the vpn gateway to the vpc
    Then the vpn gateway's vpc should match
    When I detach the vpn gateway and vpc
    Then the vpn gateway attachment state should eventually be "detached"
