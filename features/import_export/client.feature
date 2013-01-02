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
@import_export @client
Feature: AWS Import/Export Client

  Scenario: List jobs
    When I use the client to list jobs
    Then the result should have an array of jobs
    And a boolean value for truncated

  Scenario: Errors
    When I use the client to get status on a non-existent job
    Then I should receive an error with:
    | code                  | message                          |
    | InvalidJobIdException | No such job abc for your account |
