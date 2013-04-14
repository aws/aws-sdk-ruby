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
@elb @ec2 @instances
Feature: ELB Instances

  As a user of Elastic Load Balancing
  I want to add and remove instances from my load balancers

  @add
  Scenario: Add and remove an instance
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I create a load balancer
    When I add the instances to the load balancer
    Then the load balancer should have 1 instance(s)
    And the load balancer instances should include the instance
    When I remove the isntance from the load balancer
    Then the load balancer should have 0 instance(s)

  @health
  Scenario: Getting instance ELB health
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I create a load balancer
    When I add the instances to the load balancer
    Then instance health should return hash
