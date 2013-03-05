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

@ec2 @vpc @vpn_connections
Feature: EC2 VPC VPN Connections

  @slow
  Scenario: Create a vpn connection
    Given I create a vpn gateway
    And I create a customer gateway with the bgp_asn of 65534 and ip address of "3.3.3.3"
    When I create a vpn connection
    Then the vpn connection should eventually have the state "available"
