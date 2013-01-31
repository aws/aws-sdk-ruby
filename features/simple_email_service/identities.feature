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
@ses @identities
Feature: Managing SES identities

  Scenario: Verify an email address identity
    When I ask to verify the identity "noreply@amazon.com"
    Then the identity should be "noreply@amazon.com"
    And the identity should not have a verification token
    And the identity should exist
    And a request should have been made like:
    | TYPE  | NAME         | VALUE               |
    | param | Action       | VerifyEmailIdentity |
    | param | EmailAddress | noreply@amazon.com  |

  Scenario: Verify an domain identity
    When I ask to verify the identity "amazon.com"
    Then the identity should be "amazon.com"
    And the identity should have a verification token
    And the identity should exist
    And a request should have been made like:
    | TYPE  | NAME   | VALUE                |
    | param | Action | VerifyDomainIdentity |
    | param | Domain | amazon.com           |

  Scenario: Deleting an identiy
    Given I ask to verify the identity "amazon.com"
    When I delete the identity
    Then the identity should not exist
    And a request should have been made like:
    | TYPE  | NAME     | VALUE          |
    | param | Action   | DeleteIdentity |
    | param | Identity | amazon.com     |

  Scenario: Enumerating identites
    Given I ask to verify the identity "amazon.com"
    Then the identity should be in the identies collection

  @wip
  Scenario: Paging identies
    Given I verify 3 identities
    When I enumerate identities with a limit of 3 and batch size of 2
    Then a request should have been made like:
    | TYPE        | NAME      | VALUE          |
    | param       | Action    | ListIdentities |
    | param       | MaxItems  | 2              |
    And a request should have been made like:
    | TYPE        | NAME      | VALUE          |
    | param       | Action    | ListIdentities |
    | param       | MaxItems  | 1              |
    | param_match | NextToken | .+             |

  @sns
  Scenario: Disabling forwarding enabled
    Given I ask to verify the identity "noreply@amazon.com"
    And I create an SNS topic
    When I set the SES identity bounce topic
    And I set the SES identity complaint topic
    And I disable the SES identity forwarding
    Then the SES identity forwarding should be disabled

  # can no longer set bounce topics on unverified identies
  @sns @wip
  Scenario: Removing notification topics
    Given I ask to verify the identity "noreply@amazon.com"
    And I create an SNS topic
    And I set the SES identity bounce topic
    And I set the SES identity complaint topic
    And I disable the SES identity forwarding
    And I enable the SES identity forwarding
    When I set the SES identity bounce topic to nil
    When I set the SES identity complaint topic to nil
    Then the SES identity bounce topic should be nil
    Then the SES identity complaint topic should be nil
