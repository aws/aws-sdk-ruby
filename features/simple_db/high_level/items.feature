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
@simple_db @high_level @items
Feature: SimpleDB Items

  As a user of SimpleDB
  I want to work with items

  Scenario: Getting attributes for a non existant item
    When I get the "colors" attribute for "car"
    Then the attribute should have no values
    And a request should have been made like:
    | TYPE  | NAME            | VALUE         |
    | param | Action          | GetAttributes |
    | param | ItemName        | car           |
    | param | AttributeName.1 | colors        |

  Scenario: Adding values one at a time
    When I add the value "red" to the "colors" attribute of "car"
    And I add the value "green" to the "colors" attribute of "car"
    Then the "colors" attribute of "car" item should eventually be:
    | value |
    | red   |
    | green |
    And a request should have been made like:
    | TYPE  | NAME              | VALUE         |
    | param | Action            | PutAttributes |
    | param | Attribute.1.Value | red           |
    And a request should have been made like:
    | TYPE  | NAME              | VALUE         |
    | param | Action            | PutAttributes |
    | param | Attribute.1.Value | green         |

  @multibyte
  Scenario: Adding multibyte character values
    When I add the value "\xE1\x88\xB4" to the "att1" attribute of "car"
    #When I add a multibyte character value to the "att1" attribute of "car"
    Then the "att1" attribute of "car" item should eventually be "\xE1\x88\xB4"

  @conditional
  Scenario: Adding values one at a time with an expected value
    Given I add the value "red" to the "colors" attribute of "car"
    And I add the value "baz" to the "foo" attribute of "car"
    When I add the value "green" to the "colors" attribute of "car" if "foo" is "bar"
    Then the "colors" attribute of "car" item should eventually be:
    | value |
    | red   |
    And I should get a "ConditionalCheckFailed" error
    And a request should have been made like:
    | TYPE  | NAME              | VALUE         |
    | param | Action            | PutAttributes |
    | param | Attribute.1.Value | green         |
    | param | Expected.Name     | foo           |
    | param | Expected.Value    | bar           |

  @conditional
  Scenario: Adding values one at a time with an expected no value for an attribute
    Given I add the value "red" to the "colors" attribute of "car"
    And I add the value "bar" to the "foo" attribute of "car"
    When I add the value "green" to the "colors" attribute of "car" unless "foo" has a value
    Then the "colors" attribute of "car" item should eventually be:
    | value |
    | red   |
    And I should get a "ConditionalCheckFailed" error
    And a request should have been made like:
    | TYPE  | NAME              | VALUE         |
    | param | Action            | PutAttributes |
    | param | Attribute.1.Value | green         |
    | param | Expected.Name     | foo           |
    | param | Expected.Exists   | false         |

  Scenario: Adding multiple values at the same time
    When I add the following values to the "colors" attribute of "car"
    | value |
    | red   |
    | green |
    Then the "colors" attribute of "car" item should eventually be:
    | value |
    | red   |
    | green |
    And a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Attribute.1.Value   | red           |
    | param | Attribute.2.Value   | green         |

  Scenario: Replacing values on a single attribute
    Given I add the value "red" to the "colors" attribute of "car"
    And I add the value "green" to the "colors" attribute of "car"
    When I set the "colors" attribute of "car" to "blue":
    Then the "colors" attribute of "car" item should eventually be:
    | value |
    | blue  |
    And a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Attribute.1.Name    | colors        |
    | param | Attribute.1.Value   | blue          |
    | param | Attribute.1.Replace | true          |

  @conditional
  Scenario: Replacing values on a single attribute with an expected value
    Given I add the value "red" to the "colors" attribute of "car"
    And I add the value "green" to the "colors" attribute of "car"
    And I add the value "baz" to the "foo" attribute of "car"
    When I set the "colors" attribute of "car" to "blue" if "foo" is "bar":
    Then the "colors" attribute of "car" item should eventually be:
    | value |
    | red   |
    | green |
    And I should get a "ConditionalCheckFailed" error
    And a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Attribute.1.Name    | colors        |
    | param | Attribute.1.Value   | blue          |
    | param | Attribute.1.Replace | true          |
    | param | Expected.Name       | foo           |
    | param | Expected.Value      | bar           |

  @conditional
  Scenario: Replacing values on a single attribute expecting no value for an attribute
    Given I add the value "red" to the "colors" attribute of "car"
    And I add the value "green" to the "colors" attribute of "car"
    And I add the value "bar" to the "foo" attribute of "car"
    When I set the "colors" attribute of "car" to "blue" unless "foo" has a value:
    Then the "colors" attribute of "car" item should eventually be:
    | value |
    | red   |
    | green |
    And I should get a "ConditionalCheckFailed" error
    And a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Attribute.1.Name    | colors        |
    | param | Attribute.1.Value   | blue          |
    | param | Attribute.1.Replace | true          |
    | param | Expected.Name       | foo           |
    | param | Expected.Exists     | false         |

  Scenario: Replacing values on multiple attributes
    Given I add the following attributes to "car"
    | name   | value |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    | doors  | 4     |
    When I set the following attributes to "car"
    | name   | value |
    | wheels | 2     |
    | colors | white |
    Then the attributes for "car" should eventually be:
    | name   | value |
    | doors  | 4     |
    | colors | white |
    | wheels | 2     |

  Scenario: Putting attributes, mixed adds and replacements
    Given I add the value "white" to the "colors" attribute of "car"
    And I add the value "2" to the "wheels" attribute of "car"
    When I put the following attributes to "car"
    | name   | value | replace |
    | wheels | 4     | yes     |
    | colors | red   | no      |
    | colors | green | no      |
    Then a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | ItemName            | car           |
    | param | Attribute.1.Name    | colors        |
    | param | Attribute.1.Value   | red           |
    | param | Attribute.1.Replace | false         |
    | param | Attribute.2.Name    | colors        |
    | param | Attribute.2.Value   | green         |
    | param | Attribute.2.Replace | false         |
    | param | Attribute.3.Name    | wheels        |
    | param | Attribute.3.Value   | 4             |
    | param | Attribute.3.Replace | true          |
    Then the attributes for "car" should eventually be:
    | name   | value |
    | colors | green |
    | colors | red   |
    | colors | white |
    | wheels | 4     |

  Scenario: Getting attributes for an item (names only)
    When I add the value "red" to the "colors" attribute of "car"
    And I add the value "green" to the "colors" attribute of "car"
    And I add the value "100" to the "price" attribute of "car"
    Then the "car" item should eventually have attributes named:
    | name   |
    | colors |
    | price  |

  Scenario: Deleting an item
    Given I add the following values to the "colors" attribute of "car"
    | value |
    | red   |
    | green |
    When I delete the "car" item
    Then the "car" item should eventually have no attributes

  Scenario: Getting a list of all items
    When I add the following attributes to "car"
    | name   | value |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    And I add the following attributes to "bike"
    | name   | value |
    | wheels | 2     |
    | colors | black |
    Then the domain should eventually have the following items:
    | name |
    | car  |
    | bike |

  Scenario: Getting all attribute values for an item
    When I add the following attributes to "car"
    | name   | value |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    Then the attributes for "car" should eventually be:
    | name   | value |
    | colors | green |
    | colors | red   |
    | wheels | 4     |

  Scenario: Deleting attributes by name
    Given I add the following attributes to "car"
    | name   | value |
    | size   | small |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    When I delete the attributes from "car" named:
    | name   |
    | wheels |
    | colors |
    Then the attributes for "car" should eventually be:
    | name   | value |
    | size   | small |

  Scenario: Deleting attributes by name and value
    Given I add the following attributes to "car"
    | name   | value |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    | colors | blue  |
    | size   | small |
    When I delete the following attribute values from "car":
    | name   | value |
    | colors | red   |
    | colors | blue  |
    | wheels | 7     |
    Then the attributes for "car" should eventually be:
    | name   | value |
    | colors | green |
    | wheels | 4     |
    | size   | small |

  @conditional
  Scenario: Deleting attributes with an expected value
    Given I add the following attributes to "car"
    | name   | value |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    | colors | blue  |
    | size   | small |
    When I delete the following attribute values from "car" if "size" is "large":
    | name   | value |
    | colors | red   |
    | colors | blue  |
    | wheels | 7     |
    Then the attributes for "car" should eventually be:
    | name   | value |
    | colors | blue  |
    | colors | green |
    | colors | red   |
    | wheels | 4     |
    | size   | small |
    And I should get a "ConditionalCheckFailed" error

  @conditional
  Scenario: Deleting attributes expecting an attribute not to exist
    Given I add the following attributes to "car"
    | name   | value |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    | colors | blue  |
    | size   | small |
    When I delete the following attribute values from "car" if "size" has no value:
    | name   | value |
    | colors | red   |
    | colors | blue  |
    | wheels | 7     |
    Then the attributes for "car" should eventually be:
    | name   | value |
    | colors | blue  |
    | colors | green |
    | colors | red   |
    | wheels | 4     |
    | size   | small |
    And I should get a "ConditionalCheckFailed" error

  Scenario: Get all data for an item
    Given I add the following attributes to "car"
    | name   | value |
    | size   | small |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    When I ask for the data for "car"
    Then the resulting ItemData should contain the following attribute data:
    | name   | value |
    | size   | small |
    | wheels | 4     |
    | colors | red   |
    | colors | green |
    And 1 request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | GetAttributes |
    | param | ItemName            | car           |
