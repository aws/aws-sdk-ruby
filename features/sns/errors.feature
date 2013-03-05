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
@sns @errors
Feature: Modeled exceptions

  As a user of the SNS high-level interface
  I want to get modeled exceptions for client and server errors
  So that I can handle those exceptions without doing string comparisons

  Scenario Outline: Rescue InvalidParameter
    Given I create an SNS topic
    When I confirm a subscription with token "FOO" and ask that unsubscribe requests be authenticated rescuing "<class>"
    Then I should rescue the error with code "<code>"

  Examples:
    | class                         | code             |
    | SNS::Errors::InvalidParameter | InvalidParameter |
    | Errors::ClientError           | InvalidParameter |
