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

@ec2 @vpc @customer_gateways
Feature: EC2 VPC Customer Gateways

  Scenario: Create a customer gateway
    When I create a customer gateway
    Then the customer gateway should exist
    And the customer gateway should eventually have the state "available"

  Scenario: Getting a customer gateway
    Given I create a customer gateway with the bgp_asn of 65534 and ip address of "1.2.3.4"
    When I get the customer gateway by id
    Then the customer gateway should have the bgp_asn of 65534
    And the customer gateway should have the ip address of "1.2.3.4"

  Scenario: Delete an internet gateway
    Given I create a customer gateway
    When I delete the customer gateway
    And the customer gateway should eventually have the state "deleted"

  Scenario: Enumerating Gateways
    Given I create a customer gateway
    Then the account customer gatways should include the gateway
