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
@orm @find
Feature: Scoped Finds

  As an ORM user
  I want to use an expressive interface
  So that I can find records.

  @query @where
  Scenario: Using find with where (hash style)
    When I enumerate items with the following expression:
    """
      find(:all, :where => { :name => 'Patt' })
    """
    Then a select should have been performed like:
    | PART              | VALUE           |
    | condition         | `name` = 'Patt' |

  @query @where
  Scenario: Using find with where (questionmark placeholder style)
    When I enumerate items with the following expression:
    """
      find(:all, :where => ['name = ?', 'Patt'])
    """
    Then a select should have been performed like:
    | PART              | VALUE         |
    | condition         | name = 'Patt' |

  @query @where
  Scenario: Using find with where (symbol placeholder style)
    When I enumerate items with the following expression:
    """
      find(:all, :where => ['name = :name', {:name => 'Patt'}])
    """
    Then a select should have been performed like:
    | PART              | VALUE         |
    | condition         | name = 'Patt' |

  @query @order
  Scenario: Using find with order
    When I enumerate items with the following expression:
    """
      find(:all, :order => [:name, :desc])
    """
    Then a select should have been performed like:
    | PART              | VALUE           |
    | sort_instructions | `name` DESC     |

  @query @limit
  Scenario: Using find with limit
    When I enumerate items with the following expression:
    """
      find(:all, :limit => 10)
    """
    Then a select should have been performed like:
    | PART              | VALUE |
    | limit             | 10    |

  @query @limit
  Scenario: Using find with limit
    When I evaluate the following expression:
    """
      find(:first)
    """
    Then a select should have been performed like:
    | PART              | VALUE |
    | limit             | 1     |

  @query @where @order @limit
  Scenario: Using find with select, where, order and limit
    When I enumerate items with the following expression:
    """
      find(:all, :where => { :name => 'Patt' }, :order => [:name, :desc], :limit => 10)
    """
    Then a select should have been performed like:
    | PART              | VALUE                                  |
    | output_list       | *                                      |
    | condition         | `name` = 'Patt' AND `name` IS NOT NULL |
    | sort_instructions | `name` DESC                            |
    | limit             | 10                                     |

  Scenario: Adding a record and then finding it
    Given I configure the example class with:
    """
    string_attr :name
    """
    And I create a record with the following attributes:
    | ATTRIBUTE | VALUE     |
    | name      | my record |
    When I enumerate items with the following expression:
    """
    where('name = ?', "my record")
    """
    Then the records should include the record I created
    And its "name" attribute should have the value "my record"
