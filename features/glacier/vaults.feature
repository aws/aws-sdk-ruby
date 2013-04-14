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
@glacier @vaults
Feature: Managing Glacier vaults

  Scenario: Create and delete a vault
    When I create a glacier vault
    Then the vault should exist
    When I delete the vault
    Then the vault should not exist

  @sns
  Scenario: Configuring vault notification
    Given I create a glacier vault
    And I create an SNS topic
    When I set the vault configuration notifications for the following events:
    | EVENT                       |
    | ArchiveRetrievalCompleted   |
    | InventoryRetrievalCompleted |
    Then the vault configuration notification should have the correct topic
    And the vault configuration notification should have the following events:
    | EVENT                       |
    | ArchiveRetrievalCompleted   |
    | InventoryRetrievalCompleted |
