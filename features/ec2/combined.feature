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

@ec2 @combined
Feature: Combining various EC2 features

  As a user of the high-level interface for EC2
  I want to use many parts of the interface at the same time

  @instances @elastic_ips @security_groups @key_pairs @slow
  Scenario: Starting an instance with a new key pair and logging in
    Given I create a security group named "ruby-integration-test-ssh"
    And I add SSH access from my current IP to the security group
    And I create a key pair named "ruby-integration-test"
    And I allocate an elastic ip
    When I request to run an instance with the following parameters:
    | parameter       | value                     |
    | image_id        | ami-8c1fece5              |
    | key_name        | ruby-integration-test     |
    | security_groups | ruby-integration-test-ssh |
    And the instance status should eventually be "running"
    And I associate the elastic ip with the instance
    And The instance should eventually have the new elastic ip
    Then I should be able to ssh to the elastic ip as "ec2-user"
    And I terminate the instance
    And the instance status should eventually be "terminated"
