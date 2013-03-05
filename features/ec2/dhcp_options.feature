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
@ec2 @vpc @dhcp_options
Feature: EC2 VPC DHCP options

  Scenario: Create dhcp options
    When I create dhcp options
    Then the options should exist
    And the options should not be assigned to any vpcs

  Scenario: Deleting dhcp options
    Given I create dhcp options
    When I delete the dhcp options
    Then the options should not exist

  Scenario: Creating dhcp options with values
    When I create dhcp options with the following configuration:
    | key                  | value   | values          |
    | domain_name          | foo.com |                 |
    | domain_name_servers  |         | 1.1.1.1 2.2.2.2 |
    | ntp_servers          |         | 3.3.3.3         |
    | netbios_name_servers |         | 4.4.4.4 5.5.5.5 |
    | netbios_node_type    | 2       |                 |
    And I get the dhcp options by id
    Then the dpcp options should have the following configuration:
    | key                  | value   | values          |
    | domain_name          | foo.com |                 |
    | domain_name_servers  |         | 1.1.1.1 2.2.2.2 |
    | ntp_servers          |         | 3.3.3.3         |
    | netbios_name_servers |         | 4.4.4.4 5.5.5.5 |
    | netbios_node_type    | 2       |                 |

  Scenario: Assigning dhcp options to vpcs
    Given I create dhcp options
    Given I create 4 vpcs
    And I assign the dhcp options I created to the vpcs
    Then the dhcp options vpcs should include the vpcs
