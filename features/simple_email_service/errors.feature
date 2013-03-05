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
@ses @errors
Feature: SES modeled errors

  I want to be able to rescue named errors.

  Scenario Outline: Rescue SES InvalidParameterValue
    When I ask to verify the email address "abc123" rescuing "<class>"
    Then I should rescue the error with code "<code>"

  Examples:
    | class                                             | code                  |
    | SimpleEmailService::Errors::InvalidParameterValue | InvalidParameterValue |
    | Errors::ClientError                               | InvalidParameterValue |
