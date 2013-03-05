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
@elb @policies
Feature: ELB Policies

  As a user of Elastic Load Balancing
  I want to manage my load balancer policies

  @create
  Scenario: Create a policy
    Given I create a load balancer
    And I create a "AppCookieStickinessPolicyType" policy named "test" with:
    | OPT        | VALUE      |
    | CookieName | app-cookie |
    Then a request should have been made like:
    | TYPE   | NAME             | VALUE                              |
    | param  | Action           | CreateLoadBalancerPolicy           |
    | param  | PolicyName       | test                               |
    | param  | PolicyTypeName   | AppCookieStickinessPolicyType      |
    | param  | PolicyAttributes.member.1.AttributeName  | CookieName |
    | param  | PolicyAttributes.member.1.AttributeValue | app-cookie |

  Scenario: Listing policies
    Given I create a load balancer
    And I create a "AppCookieStickinessPolicyType" policy named "p1" with:
    | OPT        | VALUE       |
    | CookieName | app1-cookie |
    And I create a "AppCookieStickinessPolicyType" policy named "p2" with:
    | OPT        | VALUE       |
    | CookieName | app2-cookie |
    Then the load balancer should have 2 policies
    And the load balancer policies should be named:
    | NAME |
    | p1   |
    | p2   |

  Scenario: Getting policies attributes
    Given I create a load balancer
    When I create a "AppCookieStickinessPolicyType" policy named "test" with:
    | OPT        | VALUE      |
    | CookieName | app-cookie |
    Then the policy attributes should match:
    | OPT        | VALUE      |
    | CookieName | app-cookie |

  Scenario: Deleting a policy
    Given I create a load balancer
    And I create a "AppCookieStickinessPolicyType" policy named "test" with:
    | OPT        | VALUE      |
    | CookieName | app-cookie |
    Then the load balancer policy should exist
    When I delete the load balancer policy
    Then the load balancer policy should not exist
    And a request should have been made like:
    | TYPE   | NAME             | VALUE                    |
    | param  | Action           | DeleteLoadBalancerPolicy |
    | param  | PolicyName       | test                     |
