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
@orm @validations
Feature: Validations

  I want to easily validate the values of attributes on my model classes
  So that I don't store invalid records

  Scenario: Validate presence of an attribute
    Given I configure the example class with:
    """
    string_attr :first_name
    validates_presence_of :first_name
    """
    When I create a model instance
    Then the instance should not be valid
    And the errors should include:
    | attribute  | message          |
    | first_name | may not be blank |

  Scenario: Validate presence of an array-valued attribute (not present)
    Given I configure the example class with:
    """
    string_attr :first_name, :set => true
    validates_presence_of :first_name
    """
    When I create a model instance
    Then the instance should not be valid
    And the errors should include:
    | attribute  | message          |
    | first_name | may not be blank |

  Scenario: Validate presence of an array-valued attribute (one value)
    Given I configure the example class with:
    """
    string_attr :first_name, :set => true
    validates_presence_of :first_name
    """
    When I create a model instance with the following values:
    | attribute  | value |
    | first_name | fred  |
    Then the instance should be valid

  Scenario: Validate exclusion (invalid value)
    Given I configure the example class with:
    """
    string_attr :permission
    string_attr :username
    validates_exclusion_of(
      :permission,
      :in => %w(write),
      :unless => Proc.new { |user| user.username == "admin" }
    )
    """
    When I create a model instance with the following values:
    | attribute  | value |
    | username   | fred  |
    | permission | write |
    Then the instance should not be valid
    And the errors should include:
    | attribute  | message     |
    | permission | is reserved |

  Scenario: Validate inclusion (valid array value)
    Given I configure the example class with:
    """
    string_attr :permissions, :set => true
    string_attr :username
    validates_inclusion_of(
      :permissions,
      :in => %w(read write admin),
      :unless => Proc.new { |user| user.username == "admin" }
    )
    """
    When I create a model instance with the following values:
    | attribute   | value |
    | username    | fred  |
    | permissions | write |
    | permissions | read  |
    Then the instance should be valid

  Scenario: Validate inclusion (invalid array value)
    Given I configure the example class with:
    """
    string_attr :permissions, :set => true
    string_attr :username
    validates_inclusion_of :permissions,
      :in => %w(read write admin),
      :unless => Proc.new { |user| user.username == "admin" }
    """
    When I create a model instance with the following values:
    | attribute   | value   |
    | username    | fred    |
    | permissions | write   |
    | permissions | read    |
    | permissions | destroy |
    Then the instance should not be valid
    And the errors should include:
    | attribute   | message                     |
    | permissions | is not included in the list |

  Scenario: Validate format (valid array value)
    Given I configure the example class with:
    """
    string_attr :phone_numbers, :set => true
    string_attr :username
    validates_format_of :phone_numbers,
      :with => /(\(\d{3}\) |\d{3}.)?\d{3}[-.]\d{4}/
    """
    When I create a model instance with the following values:
    | attribute     | value          |
    | username      | fred           |
    | phone_numbers | (206) 123-4567 |
    | phone_numbers | 206.888.1234   |
    Then the instance should be valid

  Scenario: Validate format (invalid array value)
    Given I configure the example class with:
    """
    string_attr :phone_numbers, :set => true
    string_attr :username
    validates_format_of :phone_numbers,
      :with => /(\(\d{3}\) |\d{3}.)?\d{3}[-.]\d{4}/
    """
    When I create a model instance with the following values:
    | attribute     | value         |
    | username      | fred          |
    | phone_numbers | (206) 123-456 |
    Then the instance should not be valid
    And the errors should include:
    | attribute     | message    |
    | phone_numbers | is invalid |

  Scenario: Validate count (valid array value)
    Given I configure the example class with:
    """
    string_attr :phone_numbers, :set => true
    string_attr :username
    validates_count_of :phone_numbers, :within => 1..2
    """
    When I create a model instance with the following values:
    | attribute     | value          |
    | username      | fred           |
    | phone_numbers | (206) 123-4567 |
    | phone_numbers | 206.888.1234   |
    Then the instance should be valid

  Scenario: Validate count (invalid array value)
    Given I configure the example class with:
    """
    string_attr :phone_numbers, :set => true
    string_attr :username
    validates_count_of :phone_numbers,
      :within => 1..2,
      :too_many => "has too many numbers (maximum is 2)"
    """
    When I create a model instance with the following values:
    | attribute     | value          |
    | username      | fred           |
    | phone_numbers | (206) 123-4567 |
    | phone_numbers | 206.888.1234   |
    | phone_numbers | 206.222.3333   |
    Then the instance should not be valid
    And the errors should include:
    | attribute     | message                             |
    | phone_numbers | has too many numbers (maximum is 2) |

  Scenario: Validate numericality (valid array value)
    Given I configure the example class with:
    """
    string_attr :ranks, :set => true
    string_attr :username
    validates_numericality_of :ranks, :only_integer => true
    """
    When I create a model instance with the following values:
    | attribute | value |
    | username  |  fred |
    | ranks     |    10 |
    | ranks     |    15 |
    Then the instance should be valid

  Scenario: Validate numericality (invalid array value)
    Given I configure the example class with:
    """
    string_attr :ranks, :set => true
    string_attr :username
    validates_numericality_of :ranks, :only_integer => true
    """
    When I create a model instance with the following values:
    | attribute | value |
    | username  | fred  |
    | ranks     | 10.2  |
    Then the instance should not be valid
    And the errors should include:
    | attribute | message            |
    | ranks     | must be an integer |
