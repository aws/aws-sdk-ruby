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
@elb @listeners
Feature: ELB Listeners

  As a user of Elastic Load Balancing
  I want to manage my load balancer listeners

  @create
  Scenario: Create a listener
    Given I create a load balancer
    When I create a load balancer listener with the following options:
    | OPT_NAME          | VALUE | CAST   |
    | port              | 80    | to_i   |
    | protocol          | http  | to_sym |
    | instance_port     | 80    | to_i   |
    | instance_protocol | http  | to_sym |
    Then a request should have been made like:
    | TYPE        | NAME                                | VALUE        |
    | param       | Action               | CreateLoadBalancerListeners |
    | param       | Listeners.member.1.LoadBalancerPort | 80           |
    | param       | Listeners.member.1.Protocol         | HTTP         |
    | param       | Listeners.member.1.InstancePort     | 80           |
    | param       | Listeners.member.1.InstanceProtocol | HTTP         |
    | param_match | LoadBalancerName                    | ruby-test-.* |

  Scenario: Get a listener
    Given I create a load balancer
    And I create a load balancer listener with the following options:
    | OPT_NAME          | VALUE | CAST   |
    | port              | 80    | to_i   |
    | protocol          | http  | to_sym |
    | instance_port     | 80    | to_i   |
    | instance_protocol | http  | to_sym |
    When I get the listener on port 80
    Then the listener should exist
    And the listener should have the protocol :http
    And the listener should have the instance port 80
    And the listener should have the instance protocol :http
    When I delete the listener
    Then the listener should not exist


  Scenario: Find a listener
    Given I create a load balancer
    And I create a load balancer listener with the following options:
    | OPT_NAME          | VALUE | CAST   |
    | port              | 80    | to_i   |
    | protocol          | http  | to_sym |
    | instance_port     | 80    | to_i   |
    | instance_protocol | http  | to_sym |
    When I get the listener on port 80
    Then the load balancer listeners should include the listener

  @policy
  Scenario: Setting and removing the policy for a listener
    Given I create a load balancer
    And I create a "AppCookieStickinessPolicyType" policy named "test-policy" with:
    | OPT        | VALUE      |
    | CookieName | app-cookie |
    When I set the policy to the listener on port 80
    Then the listener on port 80 should have the policy
    When I remove the policy from the listener on port 80
    Then the listener on port 80 should have no policy

  @iam @server_certificates @slow
  Scenario: Setting and changing server certificates for listeners
    Given I upload an IAM server certificate
    And I create a load balancer
    And I create a load balancer listener with the server certificate
    When I upload an IAM server certificate
    And I set the server certificate on the load balancer listener
    Then the load balancer listener should have the new certificate

