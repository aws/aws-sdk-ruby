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
@ses @statistics
Feature: Getting SES Send Statistics

  I want to be able to get statistics on the email I've sent using SES.

  Scenario: Get statistics
    When I ask for the statistics
    Then the result should be an array
    And each member should have the following keys:
    | delivery_attempts |
    | rejects           |
    | complaints        |
    | bounces           |
    And each member should have a sent timestamp
