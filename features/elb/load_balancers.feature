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
@elb @load_balancers
Feature: ELB Load Balancers

  As a user of Elastic Load Balancing
  I want to manage my load balancers

  @create
  Scenario: Create a load balancer
    When I create a load balancer
    Then the load balancer should have a dns endpoint
    And a request should have been made like:
    | TYPE        | NAME                                | VALUE              |
    | param       | Action                              | CreateLoadBalancer |
    | param_match | LoadBalancerName                    | ruby-test-.*       |
    | param       | AvailabilityZones.member.1          | us-east-1b         |
    | param       | AvailabilityZones.member.2          | us-east-1c         |
    | param       | Listeners.member.1.Protocol         | HTTP               |
    | param       | Listeners.member.1.InstancePort     | 80                 |
    | param       | Listeners.member.1.InstanceProtocol | HTTP               |
    | param       | Listeners.member.1.LoadBalancerPort | 80                 |

  @delete
  Scenario: Delete a load balancer
    Given I create a load balancer
    When I delete the load balancer
    Then a request should have been made like:
    | TYPE        | NAME             | VALUE              |
    | param       | Action           | DeleteLoadBalancer |
    | param_match | LoadBalancerName | ruby-test-.*       |

  @exists
  Scenario: Check to see if a load balancer exists
    Given I create a load balancer
    Then the load balancer should exist
    When I delete the load balancer
    Then the load balancer should not exist

  Scenario: Enumerating load balancers
    Given I create a load balancer
    Then the load balancer should exist in the list of load balancers

  Scenario: Health Check Configuration
    Given I create a load balancer
    When I update the health check configuration with:
    | OPT_NAME | OPT_VALUE |
    | interval | 12        |
    | timeout  | 11        |
    Then the health check configuration should have the following values:
    | OPT_NAME | OPT_VALUE |
    | interval | 12        |
    | timeout  | 11        |

  @ec2 @security_groups
  Scenario: Adding ingress rule to ec2 security group
    Given I create a security group
    And I create a load balancer
    When I authorize ingress for the load balancer
    And a request should have been made like:
    | TYPE   | NAME                               | VALUE                         |
    | param  | Action                             | AuthorizeSecurityGroupIngress |
    | param  | IpPermissions.1.FromPort           | 80                            |
    | param  | IpPermissions.1.ToPort             | 80                            |
    | param  | IpPermissions.1.Groups.1.UserId    | amazon-elb                    |
    | param  | IpPermissions.1.Groups.1.GroupName | amazon-elb-sg                 |
    | param  | IpPermissions.1.IpProtocol         | tcp                           |

