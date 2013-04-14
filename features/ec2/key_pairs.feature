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

@ec2 @key_pairs
Feature: EC2 Key Pairs

  As a user of the high-level interface for EC2
  I want to manage key pairs

  Scenario: Creating a key pair
    When I create a key pair
    And I list key pairs
    Then The list should contain the key pair

  @memoized
  Scenario: Memoized key pair fingerprint from create
    Given I start a memoization block
    And I create a key pair
    When I get the key pair fingerprint
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE            |
    | param | Action | DescribeKeyPairs |

  Scenario: Deleting key pairs
    Given I create a key pair
    When I delete the key pair
    And I list key pairs
    Then The list should not contain the key pair

  Scenario: Importing a key pair
    Given I import a key pair named "ruby-integration-test" with the public key:
    """
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxWZwO5spSGNes3HiJJNC7VtnlfHF0dcSUrtcE4qzMl6AsQIVX4oRu+R2UAcB8o7Gb+hdhO8HpDBNNyb9T1gs1Na302wDmDSC+0w6FO3xr/UWo9zA9MyryDPCJCxhKBWrcNKyQOiS7tGyzxnpq/m6qSWdrKwz6Qw3H+TEW9btjyKcu8huJvjNMPCrGQgB41feGTZyVXydTeRINw5zwbNOAlpD33aDSgNXh+If0FEbraBH54QSxrw4niKv+KjqBMm8QkGcsI4mvzJuVMvJjDDclbSqWWBMkqWroUqVi0t/cWJK10VVPNipKJkKUWgBCFMhgNp7CYawcQF/DBK8zhbqiQ== EXAMPLE
    """
    When I get the key pair named "ruby-integration-test"
    Then It should have the fingerprint:
    """
    29:23:59:44:7c:c5:66:86:60:c1:92:cc:7b:11:49:e9
    """

  @memoized
  Scenario: Memoized key pair fingerprint from import
    Given I start a memoization block
    And I import a key pair named "ruby-integration-test" with the public key:
    """
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxWZwO5spSGNes3HiJJNC7VtnlfHF0dcSUrtcE4qzMl6AsQIVX4oRu+R2UAcB8o7Gb+hdhO8HpDBNNyb9T1gs1Na302wDmDSC+0w6FO3xr/UWo9zA9MyryDPCJCxhKBWrcNKyQOiS7tGyzxnpq/m6qSWdrKwz6Qw3H+TEW9btjyKcu8huJvjNMPCrGQgB41feGTZyVXydTeRINw5zwbNOAlpD33aDSgNXh+If0FEbraBH54QSxrw4niKv+KjqBMm8QkGcsI4mvzJuVMvJjDDclbSqWWBMkqWroUqVi0t/cWJK10VVPNipKJkKUWgBCFMhgNp7CYawcQF/DBK8zhbqiQ== EXAMPLE
    """
    When I get the key pair named "ruby-integration-test"
    Then It should have the fingerprint:
    """
    29:23:59:44:7c:c5:66:86:60:c1:92:cc:7b:11:49:e9
    """
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE            |
    | param | Action | DescribeKeyPairs |

  Scenario: Get key pair by name
    When I get the key pair named "foo"
    Then the result should be an key pair object

  Scenario: Check that an key pair exists (does not exist)
    Given I get the key pair named "xyzzy-does-not-exist"
    When I ask if the key pair exists
    Then the result should be false

  Scenario: Check that an key pair exists (exists)
    Given I create a key pair
    When I ask if the key pair exists
    Then the result should be true

  @memoized
  Scenario: Listing key pairs with memoization
    Given I create a key pair
    And I start a memoization block
    When I compute a map of key name to key fingerprint
    And I count the key pairs in my account
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE            |
    | param | Action | DescribeKeyPairs |
