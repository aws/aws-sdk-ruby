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
@swf @activity_types
Feature: Managing Activity Types in Simple Workflow

  @create
  Scenario: Register a activity type
    Given I register a simple workflow domain
    When I register a activity type named "foo" with the version "bar" with:
    | ATTR_NAME                              | VALUE     |
    | default_task_heartbeat_timeout         | 3000      |
    | default_task_list                      | task-list |
    | description                            | desc      |
    | default_task_schedule_to_close_timeout | none      |
    | default_task_schedule_to_start_timeout | 1000      |
    | default_task_start_to_close_timeout    | 4000      |
    And I get the activity type by name and version
    Then the activity type should have the following attributes
    | ATTR_NAME                              | VALUE     |
    | default_task_heartbeat_timeout         | 3000      |
    | default_task_list                      | task-list |
    | description                            | desc      |
    | default_task_schedule_to_close_timeout | none      |
    | default_task_schedule_to_start_timeout | 1000      |
    | default_task_start_to_close_timeout    | 4000      |

  Scenario: Comparing activity types
    Given I register a simple workflow domain
    And I register 1 activity type
    Then the activity type collection should include the activity type

  Scenario: Enumerating activity types
    Given I register a simple workflow domain
    And I register 4 activity types
    Then there should eventually be 4 activity types
    When I enumerate activity types with a batch_size of 2 and limit of 3
    Then 1 request should have been made like:
    | TYPE       | NAME                   | VALUE             |
    | target     | like                   | ListActivityTypes |
    | json       | ["registrationStatus"] | REGISTERED        |
    | json       | ["reverseOrder"]       | false             |
    | json       | ["maximumPageSize"]    | 2                 |
    | json_match | ["nextPageToken"]      |                   |
    And 1 request should have been made like:
    | TYPE       | NAME                   | VALUE             |
    | target     | like                   | ListActivityTypes |
    | json       | ["registrationStatus"] | REGISTERED        |
    | json       | ["reverseOrder"]       | false             |
    | json       | ["maximumPageSize"]    | 1                 |
    | json_match | ["nextPageToken"]      | .+                |

  @deprecate
  Scenario: Deprecating a activity type
    Given I register a simple workflow domain
    And I register 1 activity type
    When I deprecate the activity type
    Then deprecated activity types should include the activity type

  Scenario: Accessing static attributes
    Given I register a simple workflow domain
    And I register 1 activity type
    And I get the activity type by name and version
    When I access the following activity attributes twice:
    | ATTR_NAME                              |
    | name                                   |
    | version                                |
    | creation_date                          |
    | description                            |
    | default_task_heartbeat_timeout         |
    | default_task_list                      |
    | default_task_schedule_to_close_timeout |
    | default_task_schedule_to_start_timeout |
    | default_task_start_to_close_timeout    |
    Then 1 request should have been made like:
    | TYPE   | NAME | VALUE                |
    | target | like | DescribeActivityType |

  @memoized
  Scenario: Accessing non-static attributes
    Given I register a simple workflow domain
    And I register 1 activity type
    And I get the activity type by name and version
    And I start a memoization block
    When I access the following activity attributes twice:
    | ATTR_NAME        |
    | status           |
    | deprecation_date |
    Then 1 requests should have been made like:
    | TYPE   | NAME | VALUE                |
    | target | like | DescribeActivityType |
