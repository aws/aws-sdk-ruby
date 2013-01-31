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
@swf @domains
Feature: Managing Domains in Simple Workflow

  @create
  Scenario: Register a domain
    When I register a simple workflow domain
    Then a request should have been made like:
    | TYPE       | NAME     | VALUE                    |
    | target     | like     | RegisterDomain           |
    | json_match | ["name"] | ruby-integration-test-.+ |

  @create @memoized
  Scenario: Getting memoized domain details
    Given I register a simple workflow domain
    And the simple workflow domain retention period should be "1"
    And no requests should have been made like:
    | TYPE       | NAME     | VALUE                    |
    | target     | like     | DescribeDomain           |

  @delete
  Scenario: Deprecating a domain
    Given I register a simple workflow domain
    When I deprecate the simple workflow domain
    Then the simple workflow domain should be deprecated
    And the simple worfklow domain should be in the list of deprecated domains
    And a request should have been made like:
    | TYPE       | NAME         | VALUE                    |
    | target     | like         | DeprecateDomain          |
    | json_match | ["name"]     | ruby-integration-test-.+ |

  @get
  Scenario: Getting domain details
    Given I register a simple workflow domain
    When I get the simple workflow domain by name
    Then the simple workflow domain status should be "registered"
    And the simple workflow domain status should be "registered"
    And exactly 2 request should have been made like:
    | TYPE       | NAME     | VALUE                    |
    | target     | like     | DescribeDomain           |
    | json_match | ["name"] | ruby-integration-test-.+ |

  @get @memoized
  Scenario: Getting memoized domain details
    Given I register a simple workflow domain
    And I start a memoization block
    When I get the simple workflow domain by name
    Then the simple workflow domain status should be "registered"
    And the simple workflow domain status should be "registered"
    And the simple workflow domain retention period should be "1"
    And exactly 1 request should have been made like:
    | TYPE       | NAME     | VALUE                    |
    | target     | like     | DescribeDomain           |
    | json_match | ["name"] | ruby-integration-test-.+ |
