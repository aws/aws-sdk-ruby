# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
Feature: CRUD Recipes

  As someone with recipes to share
  I want to post my recipes
  So that others can use them

  Scenario: Create a recipe
    Given I am logged in as "fred"
    And I am on the new recipe page
    When I fill in the following:
      | Title      | Cheesy Grits |
      | Directions | Cook it.     |
    And I press "Create Recipe"
    Then I should see the following text:
      | h1                  | Your recipe:         |
      | h2.recipe_title     | Cheesy Grits by fred |
      | p.recipe_directions | Cook it.             |

  Scenario: List recipes
    Given I am logged in as "fred"
    And I create a recipe named "Beef Stew"
    When I go to the recipes page
    Then I should see the following text:
      | li | Beef Stew by fred |

  Scenario: Recipe with ingredients
    Given I am on the new recipe page
    When I fill in the following:
      | Title      | Sliced Pears |
      | Directions | Serve.       |
    And I click the "Add Ingredient" link
    And I fill in "Ingredients" with "1c pears, sliced"
    And I press "Create Recipe"
    Then I should see the following text:
      | h3.recipe_ingredients | Ingredients:     |
      | li.ingredient         | 1c pears, sliced |

  @wip
  Scenario: Edit recipe preserves saved values
    Given I create a recipe named "Beef Stew" with the ingredient "beef"
    And I am on the recipe page for "Beef Stew"
    When I follow "Edit Recipe"
    Then the field "Title" should contain "Beef Stew"
    And the ingredients list should contain "beef"
