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
@simple_db @high_level @items @select
Feature: SimpleDB Items

  As a user of SimpleDB
  I want to query items

  Scenario: Query by attribute values hash
    When I select items using the following attribute conditions:
    | color | red     |
    | model | mustang |
    Then a select should have been performed like:
    | PART      | VALUE                                   |
    | condition | `color` = 'red' AND `model` = 'mustang' |

  Scenario: Query with substitutions
    When I select items using the following conditions and substitutions:
    | CONDITION         | SUBSTITUTION      |
    | every(color) in ? | ["'red'", "blue"] |
    | mileage > ?       | 100000            |
    Then a select should have been performed like:
    | PART      | VALUE                                                      |
    | condition | every(color) in ('''red''', 'blue') AND mileage > '100000' |

  Scenario: Query with named substitutions
    When I select items using the following named substitutions:
    | CONDITION | color = :color and model = :model |
    | color     | red                               |
    | model     | mustang                           |
    Then a select should have been performed like:
    | PART      | VALUE                               |
    | condition | color = 'red' and model = 'mustang' |

  Scenario: Query with range
    When I select items where "mileage" is between "25000" and "50000"
    Then a select should have been performed like:
    | PART      | VALUE                                 |
    | condition | `mileage` BETWEEN '25000' AND '50000' |

  Scenario: Query with sort instruction
    When I select items ordering by "mileage" descending
    Then a select should have been performed like:
    | PART              | VALUE                 |
    | condition         | `mileage` IS NOT NULL |
    | sort_instructions | `mileage` DESC        |

  Scenario: Query with limit
    When I select all items with a limit of 1
    Then a select should have been performed like:
    | PART  | VALUE |
    | limit | 1     |

  Scenario: Query fetching attribute data
    Given I add the following attributes to "item001"
    | name    | value   |
    | color   | red     |
    | model   | mustang |
    | mileage | 50000   |
    And I add the following attributes to "item002"
    | name    | value  |
    | color   | blue   |
    | model   | rav4   |
    | mileage | 140000 |
    When I select all attributes
    Then the result should contain the following attribute data:
    | item    | attribute | value   |
    | item001 | color     | red     |
    | item001 | model     | mustang |
    | item001 | mileage   | 50000   |
    | item002 | color     | blue    |
    | item002 | model     | rav4    |
    | item002 | mileage   | 140000  |

  Scenario: Enumerating items with batch_size and limit
    Given I have 3 items in a domain
    When I enumerate items with a limit of 3 and batch size of 2
    Then a select should have been performed like:
    | PART  | VALUE |
    | limit | 2     |
    And a select should have been performed like:
    | PART  | VALUE |
    | limit | 1     |

  Scenario: Selecting items with batch_size and limit
    Given I have 3 items in a domain
    When I select item data with a limit of 3 and batch size of 2
    Then a select should have been performed like:
    | PART  | VALUE |
    | limit | 2     |
    And a select should have been performed like:
    | PART  | VALUE |
    | limit | 1     |
