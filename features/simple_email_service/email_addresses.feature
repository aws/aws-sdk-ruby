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
@ses @email_addresses
Feature: Managing SES email addresses

  I want to be able to create, list and delete verified email addresses.

  Scenario: Verify a new email address
    When I ask to verify the email address "foo@bar.com"
    Then a request should have been made like:
    | TYPE  | NAME         | VALUE              |
    | param | Action       | VerifyEmailAddress |
    | param | EmailAddress | foo@bar.com        |

  Scenario: Delete a verified email address
    When I ask to delete the email address "foo@bar.com"
    Then a request should have been made like:
    | TYPE  | NAME         | VALUE                      |
    | param | Action       | DeleteVerifiedEmailAddress |
    | param | EmailAddress | foo@bar.com                |

  Scenario: List verified email addresses
    When I enumerate verified email addresses
    Then a request should have been made like:
    | TYPE  | NAME         | VALUE                      |
    | param | Action       | ListVerifiedEmailAddresses |
