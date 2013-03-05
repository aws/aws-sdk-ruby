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
@simple_db @domains @high_level
Feature: SimpleDB High-Level Domains

  As a user of SimpleDB
  I want a high-level interface to work with domains

  @create_domain
  Scenario: creating a domain
    When I create a domain named "new_domain"
    Then The domain should be named "new_domain"
    And a request should have been made like:
    | TYPE  | NAME       | VALUE        |
    | param | Action     | CreateDomain |
    | param | DomainName | new_domain   |

  @delete_domain
  Scenario: deleting a domain
    Given I create a domain named "to_delete"
    When I get the domain name "to_delete"
    And I delete the domain
    Then The domain should not exist
    And a request should have been made like:
    | TYPE  | NAME       | VALUE        |
    | param | Action     | DeleteDomain |
    | param | DomainName | to_delete    |

  @list_domains
  Scenario: listing domains
    Given I create a domain named "needle"
    When I enumerate domains
    Then A domain named "needle" should be in the list

  @domain_metadata
  Scenario: describing domains
    Given I create a domain named "for_metadata"
    Then I can get metadata from the domain
