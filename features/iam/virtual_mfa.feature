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
@iam @virtual_mfa
Feature: IAM Virtual MFA Devices

  Scenario: Creating an IAM virtual MFA device
    When I create an IAM virtual MFA device
    Then the result should be an MFA device
    And a request should have been made like:
    | TYPE  | NAME            | VALUE                  |
    | param | Action          | CreateVirtualMFADevice |

  Scenario: Paging IAM virtual MFA devices
    Given I create 4 IAM virtual MFA devices
    When I list IAM virtual MFA devices with a limit of 3 and a batch size of 2
    Then a request should have been made like:
    | TYPE  | NAME     | VALUE                 |
    | param | Action   | ListVirtualMFADevices |
    | param | MaxItems | 2                     |
    And a request should have been made like:
    | TYPE        | NAME     | VALUE                 |
    | param       | Action   | ListVirtualMFADevices |
    | param_match | Marker   | .+                    |
    | param       | MaxItems | 1                     |

  Scenario: Enabling an IAM virtual MFA device
    Given I create an IAM virtual MFA device
    And I create an IAM user
    When I enable the virtual MFA device for the user
    Then the list of MFA devices for the user should include the device I created
