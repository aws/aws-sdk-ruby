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
@simple_db @domains @low_level
Feature: SimpleDB Low-Level Domains

  As a user of SimpleDB
  I want a low-level interface to create, list and describe domains

  @create_domain
  Scenario: create a domain
    When I call create_domain with "ruby_integration_test"
    Then I should receive a simple db response

  @create_domain @endpoint
  Scenario: create a domain in a different region
    When I call create_domain with "ruby_integration_test" in "sdb.us-west-1.amazonaws.com"
    Then I should receive a simple db response
    Then a request should have been made like:
    | TYPE  | NAME       | VALUE                       |
    | http  | host       | sdb.us-west-1.amazonaws.com |
    | param | Action     | CreateDomain                |
    | param | DomainName | ruby_integration_test       |

  @delete_domain
  Scenario: delete a domain
    When I call delete_domain with "ruby_integration_test"
    Then I should receive a simple db response

  @list_domains
  Scenario: list domains with limit
    Given I call create_domain 3 times
    When I call list_domains with a limit of 2
    Then I should receive a simple db response
    And The response should have a next token
    And The response should have 2 domains

  @list_domains @paginate
  Scenario: list domains with limit and next token
    Given I call create_domain 3 times
    And I call list_domains with a limit of 2
    When I call list_domains with a limit of 2 and a next_token
    Then I should receive a simple db response
    And The response should have at least 1 different domains

  @domain_metadata
  Scenario: domain_metadata
    Given I call delete_domain with "sample_domain"
    And I call create_domain with "sample_domain"
    When I call domain_metadata with "sample_domain"
    Then I should receive a simple db response
    And The response should have metadata with "item_count" of 0
    And The response should have metadata with "item_names_size_bytes" of 0
    And The response should have metadata with "attribute_name_count" of 0
    And The response should have metadata with "attribute_names_size_bytes" of 0
    And The response should have metadata with "attribute_value_count" of 0
    And The response should have metadata with a timestamp
