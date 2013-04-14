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
@swf @workflow_executions
Feature: Managing Workflow Executions

  Scenario: Starting a workflow execution
    Given I register a simple workflow domain
    And I register 1 workflow type
    When I start 1 workflow execution
    Then 1 request should have been made like:
    | TYPE   | NAME | VALUE                  |
    | target | like | StartWorkflowExecution |

  Scenario: Counting workflow executions of a single type
    Given I register a simple workflow domain
    When I register 1 workflow type
    And I start 2 workflow executions
    Then there should eventually be 2 workflow execution of the workflow type

  Scenario: Starting and counting workflow executions
    Given I register a simple workflow domain
    And I register 1 workflow type
    When I start a workflow exeuction
    Then the workflow executions should eventually include the execution
    And the workflow type should have 1 workflow executions
    And a request should have been made like:
    | TYPE   | NAME                | VALUE                       |
    | target | like                | StartWorkflowExecution      |
    And a request should have been made like:
    | TYPE   | NAME                | VALUE                       |
    | target | like                | ListOpenWorkflowExecutions  |
    | json   | ["reverseOrder"]    | false                       |
    And a request should have been made like:
    | TYPE   | NAME                | VALUE                       |
    | target | like                | CountOpenWorkflowExecutions |

  Scenario: Signaling a workflow execution
    Given I register a simple workflow domain
    And I register 1 workflow type
    And I start 1 workflow execution
    When I signal the execution "greeting" with the input "hello world"
    Then the execution history should have a "greeting" signal with "hello world"

  Scenario: Canceling a workflow execution
    Given I register a simple workflow domain
    And I register 1 workflow type
    And I start 1 workflow execution
    When I request to cancel workflow execution
    And the workflow execution history should contain a "WorkflowExecutionCancelRequested" event

  Scenario: Terminiating a workflow execution
    Given I register a simple workflow domain
    And I register 1 workflow type
    And I start 1 workflow execution
    When I terminate the workflow execution
    Then the workflow execution status should be "terminated"
    And the workflow execution history should contain a "WorkflowExecutionTerminated" event
