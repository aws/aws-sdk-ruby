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
@swf @workflow_types
Feature: Managing Workflow Types in Simple Workflow

  @create
  Scenario: Register a workflow type
    Given I register a simple workflow domain
    When I register a workflow type named "foo" with the version "bar" with:
    | ATTR_NAME                                | VALUE     |
    | default_child_policy                     | terminate |
    | default_execution_start_to_close_timeout | 12345678  |
    | default_task_start_to_close_timeout      | none      |
    | default_task_list                        | task-list |
    | description                              | desc      |
    And I get the workflow type by name and version
    Then the workflow type should have the following attributes
    | ATTR_NAME                                | VALUE     |
    | default_child_policy                     | terminate |
    | default_execution_start_to_close_timeout | 12345678  |
    | default_task_start_to_close_timeout      | none      |
    | default_task_list                        | task-list |
    | description                              | desc      |

  Scenario: Comparing workflow types
    Given I register a simple workflow domain
    And I register 1 workflow type
    Then the workflow type collection should include the workflow type

  @paging
  Scenario: Enumerating workflow types
    Given I register a simple workflow domain
    And I register 4 workflow types
    Then there should eventually be 4 workflow types
    When I enumerate workflow types with a batch_size of 2 and limit of 3
    Then 1 request should have been made like:
    | TYPE       | NAME                   | VALUE             |
    | target     | like                   | ListWorkflowTypes |
    | json       | ["registrationStatus"] | REGISTERED        |
    | json       | ["reverseOrder"]       | false             |
    | json       | ["maximumPageSize"]    | 2                 |
    | json_match | ["nextPageToken"]      |                   |
    And 1 request should have been made like:
    | TYPE       | NAME                   | VALUE             |
    | target     | like                   | ListWorkflowTypes |
    | json       | ["registrationStatus"] | REGISTERED        |
    | json       | ["reverseOrder"]       | false             |
    | json       | ["maximumPageSize"]    | 1                 |
    | json_match | ["nextPageToken"]      | .+                |

  @deprecate
  Scenario: Deprecating a workflow type
    Given I register a simple workflow domain
    And I register 1 workflow type
    When I deprecate the workflow type
    Then deprecated workflow types should include the workflow type

  Scenario: Accessing static attributes
    Given I register a simple workflow domain
    And I register 1 workflow type
    And I get the workflow type by name and version
    When I access the following attributes twice:
    | ATTR_NAME                                |
    | name                                     |
    | version                                  |
    | creation_date                            |
    | description                              |
    | default_child_policy                     |
    | default_execution_start_to_close_timeout |
    | default_task_list                        |
    | default_task_start_to_close_timeout      |
    Then 1 request should have been made like:
    | TYPE   | NAME | VALUE                |
    | target | like | DescribeWorkflowType |

  @memoized
  Scenario: Accessing non-static attributes
    Given I register a simple workflow domain
    And I register 1 workflow type
    And I get the workflow type by name and version
    And I start a memoization block
    When I access the following attributes twice:
    | ATTR_NAME        |
    | status           |
    | deprecation_date |
    Then 1 requests should have been made like:
    | TYPE   | NAME | VALUE                |
    | target | like | DescribeWorkflowType |
