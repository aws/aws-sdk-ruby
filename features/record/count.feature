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
@orm @count
Feature: Scoped counts

  As an ORM user
  I want to use an expressive interface
  So that I can count records.

  @query @where
  Scenario: Using count with where (hash style)
    When I count items with the following expression:
    """
      count(:where => { :name => 'Patt' })
    """
    Then a select should have been performed like:
    | PART        | VALUE           |
    | condition   | `name` = 'Patt' |
    | output_list | count(*)        |

  @query @where
  Scenario: Using count with where (questionmark placeholder style)
    When I count items with the following expression:
    """
      count(:where => ['name = ?', 'Patt'])
    """
    Then a select should have been performed like:
    | PART        | VALUE         |
    | condition   | name = 'Patt' |
    | output_list | count(*)      |

  @query @where
  Scenario: Using count with where (symbol placeholder style)
    When I count items with the following expression:
    """
      count(:where => ['name = :name', {:name => 'Patt'}])
    """
    Then a select should have been performed like:
    | PART        | VALUE         |
    | condition   | name = 'Patt' |
    | output_list | count(*)      |

  @query @limit
  Scenario: Using count with limit
    When I count items with the following expression:
    """
      count(:limit => 10)
    """
    Then a select should have been performed like:
    | PART              | VALUE |
    | limit             | 10    |

  @query @where @limit
  Scenario: Using count with where and limit
    When I count items with the following expression:
    """
      count(:where => { :name => 'Patt' }, :limit => 10)
    """
    Then a select should have been performed like:
    | PART              | VALUE           |
    | output_list       | count(*)        |
    | condition         | `name` = 'Patt' |
    | limit             | 10              |

  Scenario: Adding records and then counting them
    Given I configure the example class with:
    """
    string_attr :name
    """
    And I create a record with the following attributes:
    | ATTRIBUTE | VALUE     |
    | name      | my record |
    And I create a record with the following attributes:
    | ATTRIBUTE | VALUE     |
    | name      | my record |
    And I create a record with the following attributes:
    | ATTRIBUTE | VALUE     |
    | name      | my item |
    When I count items with the following expression:
    """
    where('name = ?', "my record").count
    """
    Then the result should be 2
