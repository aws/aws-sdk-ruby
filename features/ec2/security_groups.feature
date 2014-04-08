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
@ec2 @security_groups
Feature: EC2 Security Groups

  As a user of the high-level interface for EC2
  I want to create, modify and describe security groups
  So that I can use EC2 securely

  Scenario: Create a security group
    When I create a security group
    Then The security group should be in the list

  Scenario: Delete a security group
    Given I create a security group
    When I delete the security group
    Then The security group should not be in the list

  Scenario: Get a list of security groups
    Given I create the following security groups:
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-2 |
    | ruby-integration-test-3 |
    When I get a list of security groups
    Then The following security groups should be in the list
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-2 |
    | ruby-integration-test-3 |

  @memoized
  Scenario: List security groups with memoization
    Given I create the following security groups:
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-2 |
    | ruby-integration-test-3 |
    And I start a memoization block
    When I get a list of all authorized ingresses
    And I compute a hash of security group name to description
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE                  |
    | param | Action | DescribeSecurityGroups |

  Scenario: Fitlering security groups
    Given I create the following security groups:
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-2 |
    | ruby-integration-test-3 |
    When I get a list of security groups filtered like:
    """
      @ec2.security_groups.filter('group-name', '*test-2').to_a
    """
    Then The following security groups should be in the list
    | name                    |
    | ruby-integration-test-2 |
    Then The following security groups should not be in the list
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-3 |

  Scenario: Getting a single security group by name
    Given I create the following security groups:
    | name                    | description |
    | ruby-integration-test-1 | short desc  |
    When I get the security group by name "ruby-integration-test-1"
    Then The security group should have the description "short desc"
    And The security group should have an owner id

  Scenario: authorizing ingress ip addresses
    Given I create the following security groups:
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-2 |
    And I get the security group by name "ruby-integration-test-1"
    When I authorize "tcp" over port 22 for:
    | type     | value                   |
    | ip_range | 127.0.0.1/0             |
    | group    | ruby-integration-test-2 |
    Then The security group should allow "tcp" over port 80 for:
    | type     | value                   |
    | ip_range | 127.0.0.1/0             |
    | group    | ruby-integration-test-2 |

  Scenario: Get security group by ID
    When I get the security group "sg-123" by ID
    Then the result should be an security group object

  Scenario: Check that an security group exists (does not exist)
    Given I get the security group "sg-123" by ID
    When I ask if the security group exists
    Then the result should be false

  Scenario: Check that an security group exists (exists)
    Given I create a security group
    When I ask if the security group exists
    Then the result should be true
