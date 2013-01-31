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
@s3 @low_level @object_acl
Feature: Object ACLs
  As a user of the S3 low-level client
  I want to be able to manipulate object ACLs
  So that I can control access to my S3 resources

  @set
  Scenario: Set object ACL
    Given my account has an object in it
    When I ask the client to set an object ACL
    Then the result should be a successful response
    And the client should have made a "PUT" request to the object ACL
    And the object ACL should resemble the one that was set

  @set
  Scenario: Set object ACL (hashes)
    Given my account has an object in it
    When I ask the client to set an object ACL using an AccessControlList object
    Then the result should be a successful response
    And the client should have made a "PUT" request to the object ACL
    And the object ACL should resemble the one that was set

  @set @round_trip
  Scenario: Modify object ACL with OO interface
    Given my account has an object in it
    When I add a grant to the object ACL
    And I ask the client to set the modified object ACL
    Then the result should be a successful response
    And the client should have made a "PUT" request to the object ACL
    And the object ACL should include the new grant

  @get
  Scenario: Get object ACL
    Given my account has an object in it
    When I ask the client to get the object ACL
    Then the result should be a successful response
    And the client should have made a "GET" request to the object ACL

  @get
  Scenario: Get object ACL (OO interface)
    Given my account has an object in it
    When I ask the client to get the object ACL
    Then the result should be a successful response
    And the client should have made a "GET" request to the object ACL
    And the result should be an AccessControlList object containing the right data
