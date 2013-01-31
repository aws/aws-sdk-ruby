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
@ec2 @instance_attributes
Feature: Instance attributes

  As a user of the high-level interface for EC2
  I want to read, modify, and reset instance attributes
  So that I can use the advanced features of EC2

  @get
  Scenario: Get user data
    Given I request to run an instance with the following parameters:
    | parameter | value          |
    | image_id  | ami-8c1fece5   |
    | user_data | HELLO GOODBYE! |
    And I wait for the instance to exist
    When I get the instance's user data
    Then the result should be "HELLO GOODBYE!"

  @set @slow
  Scenario: Set user data
    Given I request to run an instance with the following parameters:
    | parameter | value          |
    | image_id  | ami-8c1fece5   |
    | user_data | HELLO GOODBYE! |
    And I put the instance into a stopped state
    When I set the instance's user data to "something else"
    Then the instance's user data should eventually be "something else"

  @get
  Scenario: Get instance type
    Given I request to run an instance with the following parameters:
    | parameter     | value        |
    | image_id      | ami-8c1fece5 |
    | instance_type | t1.micro     |
    And I wait for the instance to exist
    When I get the instance type
    Then the result should be "t1.micro"

  @get @memoized
  Scenario: Get memoized attributes from RunInstances
    Given I start a memoization block
    And I request to run an instance with the following parameters:
    | parameter     | value        |
    | image_id      | ami-8c1fece5 |
    When I get the following attributes of the instance:
    | instance_type           |
    | image                   |
    | status                  |
    | private_dns_name        |
    | public_dns_name         |
    | state_transition_reason |
    | key_pair                |
    | ami_launch_index        |
    | launch_time             |
    | kernel_id               |
    | ramdisk_id              |
    | platform                |
    | monitoring_enabled?     |
    | private_ip_address      |
    | public_ip_address       |
    | security_groups         |
    | architecture            |
    | root_device_type        |
    | root_device_name        |
    | block_device_mappings   |
    | virtualization_type     |
    | client_token            |
    | hypervisor              |
    | reservation_id          |
    | owner_id                |
    | requester_id            |
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeInstances |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE                     |
    | param | Action | DescribeInstanceAttribute |

  @get @memoized
  Scenario: Get instance type (memoized from describe attribute)
    Given I request to run an instance with the following parameters:
    | parameter     | value        |
    | image_id      | ami-8c1fece5 |
    | instance_type | t1.micro     |
    And I wait for the instance to exist
    And I start a memoization block
    When I list instances filtering by the instance ID I just created
    And I get the instance type of the first item in the result
    Then the result should be "t1.micro"
    And 1 request should have been made like:
    | TYPE        | NAME           | VALUE             |
    | param       | Action         | DescribeInstances |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE                     |
    | param | Action | DescribeInstanceAttribute |

  @get @memoized
  Scenario: Get instance type (memoized from describe)
    Given I request to run an instance with the following parameters:
    | parameter     | value        |
    | image_id      | ami-8c1fece5 |
    | instance_type | t1.micro     |
    And I wait for the instance to exist
    And I start a memoization block
    When I get the instance type
    And I get the instance type again
    Then the result should be "t1.micro"
    And 1 request should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeInstances |

  @set @slow
  Scenario: Change instance type
    Given I request to run an instance with the following parameters:
    | parameter     | value        |
    | image_id      | ami-8c1fece5 |
    | instance_type | t1.micro     |
    And I wait for the instance to exist
    And I put the instance into a stopped state
    When I change the instance type to "m1.small"
    Then the instance type should eventually be "m1.small"

  @get
  Scenario: Check API Termination
    Given I request to run an instance with the following parameters:
    | parameter               | value        |
    | image_id                | ami-8c1fece5 |
    | disable_api_termination | true         |
    And I wait for the instance to exist
    When I ask if termination is disabled
    Then the result should be true

  @set
  Scenario: Disable API Termination
    Given I request to run an instance with the following parameters:
    | parameter               | value        |
    | image_id                | ami-8c1fece5 |
    And I wait for the instance to exist
    When I disable API termination for the instance
    Then the instance should eventually have API termination disabled

  @get @vpc
  Scenario: Check if Source/Destination checking is enabled
    Given I create a vpc
    And I create a subnet
    When I request to run an vpc instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    When I ask if source/destination checking is enabled
    Then the result should be true

  @set @vpc
  Scenario: Disable Source/Destination checking
    Given I create a vpc
    And I create a subnet
    When I request to run an vpc instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    When I disable source/destination checking
    Then the instance should eventually have source/destination checking disabled

  @get
  Scenario: Get instance-initiated shutdown behavior
    Given I request to run an instance with the following parameters:
    | parameter                            | value        |
    | image_id                             | ami-8c1fece5 |
    | instance_initiated_shutdown_behavior | stop         |
    And I wait for the instance to exist
    When I get the instance-initiated shutdown behavior
    Then the result should be "stop"

  @set
  Scenario: Change instance-initiated shutdown behavior
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    When I set the instance-initiated shutdown behavior to "stop"
    Then the instance-initiated shutdown behavior should eventually be "stop"

  @get
  Scenario: Get image ID
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    When I get the instance's image ID
    Then the result should be "ami-8c1fece5"

  @get
  Scenario: Get kernel ID
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    | kernel_id | aki-f5c1219c |
    And I wait for the instance to exist
    When I get the instance's kernel ID
    Then the result should be "aki-f5c1219c"

  @set @slow
  Scenario: Set kernel ID
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I put the instance into a stopped state
    When I set the instance's kernel ID to "aki-f5c1219c"
    Then the instance's kernel ID should eventually be "aki-f5c1219c"

  @reset @slow
  Scenario: Reset kernel ID
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I put the instance into a stopped state
    When I reset the instance's kernel ID
    Then a request should have been made like:
    | TYPE        | NAME       | VALUE                  |
    | param       | Action     | ResetInstanceAttribute |
    | param_match | InstanceId | ^i-.+                  |
    | param       | Attribute  | kernel                 |

  @get
  Scenario: Get ramdisk ID
    Given I request to run an instance with the following parameters:
    | parameter  | value        |
    | image_id   | ami-8c1fece5 |
    | ramdisk_id | ari-dbc121b2 |
    And I wait for the instance to exist
    When I get the instance's ramdisk ID
    Then the result should be "ari-dbc121b2"

  @set @slow
  Scenario: Set ramdisk ID
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I put the instance into a stopped state
    When I set the instance's ramdisk ID to "ari-dbc121b2"
    Then the instance's ramdisk ID should eventually be "ari-dbc121b2"

  @reset @slow
  Scenario: Reset ramdisk ID
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I put the instance into a stopped state
    When I reset the instance's ramdisk ID
    Then a request should have been made like:
    | TYPE        | NAME       | VALUE                  |
    | param       | Action     | ResetInstanceAttribute |
    | param_match | InstanceId | ^i-.+                  |
    | param       | Attribute  | ramdisk                |

  @get
  Scenario: Get instance key pair
    Given I create a key pair
    And I request to run an instance of "ami-8c1fece5" using the key pair
    Then the instance key pair should be the one I created it with

  @get
  Scenario: Get root device name
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    When I get the instance's root device name
    Then the result should be "/dev/sda1"

  @get @slow
  Scenario: Get various string attributes from DescribeInstances
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance status to be "running"
    When I query the attributes of the instance
    Then I get values like the following from the instance:
    | private_dns_name    | .+\.internal               |
    | dns_name            | ec2-.+\.amazonaws\.com     |
    | ami_launch_index    | \d+                        |
    | private_ip_address  | (\d+\.){3}\d+              |
    | ip_address          | (\d+\.){3}\d+              |
    | architecture        | i386                       |
    | root_device_type    | ebs                        |
    | virtualization_type | paravirtual                |
    | reservation_id      | r-.+                       |
    | owner_id            | \d+                        |
    | client_token        | ^([0-9a-f]+-){4}[0-9a-f]+$ |

  @get
  Scenario: Get availability zone
    Given I request to run an instance with the following parameters:
    | parameter         | value        |
    | image_id          | ami-8c1fece5 |
    | availability_zone | us-east-1b   |
    And I wait for the instance to exist
    When I get the instance's availability zone
    Then the result should be "us-east-1b"

  @get @slow
  Scenario: Check monitoring status
    Given I request to run an instance with the following parameters:
    | parameter          | value        |
    | image_id           | ami-8c1fece5 |
    | monitoring_enabled | true         |
    And I wait for the instance status to be "running"
    When I ask if monitoring is enabled
    Then the result should be true

  @set @slow
  Scenario: Enable monitoring
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    When I enable monitoring on the instance
    Then the instance should eventually have monitoring enabled

  @set @slow @memoized @wip
  Scenario: Memoized monitoring state from MonitorInstances
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    And I start a memoization block
    And I enable monitoring on the instance
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeInstances |

  @set @slow
  Scenario: Disable monitoring
    Given I request to run an instance with the following parameters:
    | parameter          | value        |
    | image_id           | ami-8c1fece5 |
    | monitoring_enabled | true         |
    And I wait for the instance to exist
    When I disable monitoring on the instance
    Then the instance should eventually have monitoring disabled

  @set @slow @memoized @wip
  Scenario: Memoized monitoring state from UnmonitorInstances
    Given I request to run an instance with the following parameters:
    | parameter          | value        |
    | image_id           | ami-8c1fece5 |
    | monitoring_enabled | true         |
    And I wait for the instance to exist
    And I start a memoization block
    And I disable monitoring on the instance
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | DescribeInstances |

  # is this the right API to expose?
  @get
  Scenario: State transition reason
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    And I terminate the instance
    And I wait for the instance status to be "terminated"
    When I get the instance's state transition reason
    Then the result should match "User initiated"

  @get
  Scenario: Launch time
    Given I request to run an instance with the following parameters:
    | parameter | value        |
    | image_id  | ami-8c1fece5 |
    And I wait for the instance to exist
    When I get the instance's launch time
    Then the result should be a time within the last hour

  @get
  Scenario: Get platform
    Given I request to run an instance from a windows image
    And I wait for the instance to exist
    When I get the instance's platform
    Then the result should be "windows"

  @get
  Scenario: Get security groups
    Given I create the following security groups:
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-2 |
    And I request to run an instance with the following parameters:
    | parameter       | value                   |
    | image_id        | ami-8c1fece5            |
    | security_groups | ruby-integration-test-1 |
    | security_groups | ruby-integration-test-2 |
    And I wait for the instance to exist
    When I ask for the security groups associated with the instance
    Then the result should be an array
    And The following security groups should be in the list
    | name                    |
    | ruby-integration-test-1 |
    | ruby-integration-test-2 |
