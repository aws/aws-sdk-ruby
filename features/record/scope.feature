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
@orm @scope
Feature: Scoped Finds

  As an ORM user
  I want to use an expressive interface
  So that I can find records.

  @where
  Scenario: Using where with a string
    When I enumerate items with the following expression:
    """
      where('name = "joe"')
    """
    Then a select should have been performed like:
    | PART      | VALUE        |
    | condition | name = "joe" |

  @where
  Scenario: Using where with a string
    When I enumerate items with the following expression:
    """
      where(:name => "joe")
    """
    Then a select should have been performed like:
    | PART      | VALUE          |
    | condition | `name` = 'joe' |

  @where
  Scenario: Using where with question mark placeholders
    When I enumerate items with the following expression:
    """
      where('name = ?', 'joe')
    """
    Then a select should have been performed like:
    | PART      | VALUE        |
    | condition | name = 'joe' |

  @where
  Scenario: Using where with named placeholders
    When I enumerate items with the following expression:
    """
      where('name = :name', :name => 'joe')
    """
    Then a select should have been performed like:
    | PART      | VALUE        |
    | condition | name = 'joe' |

  @where @wip
  Scenario: Using named integer attributes in where condition hashes should
    properly pad the numeric value.
    Given I configure the example class with:
    """
      integer_attr :price, :precision => 5
    """
    When I enumerate items with the following expression:
    """
      where(:price => 123)
    """
    Then a select should have been performed like:
    | PART      | VALUE             |
    | condition | `price` = '00123' |

  @order
  Scenario: Using order with default direction
    When I enumerate items with the following expression:
    """
      order('name')
    """
    Then a select should have been performed like:
    | PART              | VALUE      |
    | sort_instructions | `name` ASC |

  @order
  Scenario: Using order with a direction
    When I enumerate items with the following expression:
    """
      order(:name, :desc)
    """
    Then a select should have been performed like:
    | PART              | VALUE       |
    | sort_instructions | `name` DESC |

  @limit
  Scenario: Using limit
    When I enumerate items with the following expression:
    """
      limit(10)
    """
    Then a select should have been performed like:
    | PART  | VALUE |
    | limit | 10    |

  @where @order @limit
  Scenario: Using limit
    When I enumerate items with the following expression:
    """
      where('age > ?', 20).order(:age, :desc).limit(10)
    """
    Then a select should have been performed like:
    | PART              | VALUE                            |
    | output_list       | *                                |
    | condition         | age > '20' AND `age` IS NOT NULL |
    | sort_instructions | `age` DESC                       |
    | limit             | 10                               |
