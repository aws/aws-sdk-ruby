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
@glacier @archives
Feature: Managing Glacier archives

  Working with an existing vault with existing archives.

  Scenario: Uploading an archive
    When I upload an archive that is 5.5MB large
    Then I should get an archive with an ID
    And I should be able to delete the archive
